package com.yahoo.ycsb.generator;
import java.util.Random;
import com.yahoo.ycsb.Utils;

/**
 * A trivial integer generator that always returns the same value.
 * 
 * @author sears
 *
 */
public class SmallAndLargeGenerator extends NumberGenerator {
    private final int _small, _large;
    private final int smallRatio;
	/**
	 * @param i The integer that this generator will always return.
	 */
	public SmallAndLargeGenerator(int small, int large, int exp) {
        _small = small;
        _large = large;
        smallRatio = exp;
	}

	@Override
	public Integer nextValue() {
        if(smallRatio==0) {
            int ran = Utils.random().nextInt(3);
            return ran==0?_small:_large;
        }
        if(smallRatio==1) {
            int ran = Utils.random().nextInt(2);
            return ran==0?_small:_large;
        }
        if(smallRatio==2) {
            int ran = Utils.random().nextInt(3);
            return ran==0?_large:_small;
        }
        return _large;
	}

	@Override
	public double mean() {
		return _large;
	}

}