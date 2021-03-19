package eta.example;

public class Counter {

    private int counter;

    public int publicCounter;

    public static final int COUNTER_MAX = 1000;

    public static int numCounters;

    public Counter() {}

    public Counter(int initial) {
        this.counter = initial;
    }

    public void increment() {
        this.counter = Math.min(this.counter + 1, COUNTER_MAX);
        this.publicCounter = counter;
    }

    public int get() {
        return counter;
    }

    public void set(int value) {
        this.counter = Math.min(value, COUNTER_MAX);
        this.publicCounter = counter;
    }
}