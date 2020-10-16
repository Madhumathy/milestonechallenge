package javaApp;

import org.junit.Test;
import static org.assertj.core.api.Assertions.assertThat;

public class CalcTest {
    @Test
    public void shouldAddTwoNumbers() {
        Calc calculator = new Calc();
        int result = calculator.add(2, 3);
        assertThat(result).isEqualTo(5);
    }

    @Test
    public void shouldSubtractTwoNumbers() {
        Calc calculator = new Calc();
        int result = calculator.subtract(5, 3);
        assertThat(result).isEqualTo(2);
    }

    @Test
    public void shouldMultiplyTwoNumbers() {
        Calc calculator = new Calc();
        int result = calculator.multiply(2, 3);
        assertThat(result).isEqualTo(6);
    }

    @Test
    public void shouldDivideTwoNumbers() {
        Calc calculator = new Calc();
        int result = calculator.divide(6, 3);
        assertThat(result).isEqualTo(2);
    }
}  