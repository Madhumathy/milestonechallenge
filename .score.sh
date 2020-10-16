#!/bin/sh
pass=0
fail=0
mvn clean compile test | tee .output.txt
TEST_1=$(grep -o -w -e "junit" -e "org.assertj" -e "assertj-core" -e "maven-compiler-plugin" -e "exec-maven-plugin" pom.xml | wc -l)
TEST_2=$(grep -o -w -e "+" -e "-" -e "*" -e "/" ./src/main/java/javaApp/Calc.java | wc -l)
TEST_3=$(grep -io "BUILD SUCCESS" .output.txt | wc -l)
TEST_4=$(grep -o -w -e "Tests run: 4" -e "Failures: 0" -e "Errors: 0" .output.txt | wc -l)
TEST_5=$(find ./target/surefire-reports/*.xml | wc -l)

if [ "$TEST_1" -ge 6 ]
then ((pass++))
else
    ((fail++))
fi;
if [ "$TEST_2" -eq 4 ]
then ((pass++))
else
    ((fail++))
fi;
if [ "$TEST_3" -eq 1 ]
then ((pass++))
else
    ((fail++))
fi;
if [ "$TEST_4" -eq 6 ]
then ((pass++))
else
    ((fail++))
fi;
if [ "$TEST_5" -eq 1 ]
then ((pass++))
else
    ((fail++))
fi;
echo "Total testcase: 5"
echo "Total testcase passed: $pass"
echo "Total testcase fail: $fail"
echo "total score: $(( ($pass * 100) / 5))"
