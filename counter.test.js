const { createCounter } = require('./counter');

describe('Counter Function', () => {
  test('should initialize counter with default value of 0', () => {
    const counter = createCounter();
    expect(counter.getValue()).toBe(0);
  });

  test('should initialize counter with custom initial value', () => {
    const counter = createCounter(5);
    expect(counter.getValue()).toBe(5);
  });

  test('should increment counter by 1', () => {
    const counter = createCounter(0);
    counter.increment();
    expect(counter.getValue()).toBe(1);
  });

  test('should increment counter by custom amount', () => {
    const counter = createCounter(0);
    counter.increment(3);
    expect(counter.getValue()).toBe(3);
  });

  test('should decrement counter by 1', () => {
    const counter = createCounter(5);
    counter.decrement();
    expect(counter.getValue()).toBe(4);
  });

  test('should decrement counter by custom amount', () => {
    const counter = createCounter(10);
    counter.decrement(3);
    expect(counter.getValue()).toBe(7);
  });

  test('should reset counter to initial value', () => {
    const counter = createCounter(5);
    counter.increment(10);
    counter.reset();
    expect(counter.getValue()).toBe(5);
  });

  test('should handle negative values', () => {
    const counter = createCounter(0);
    counter.decrement(5);
    expect(counter.getValue()).toBe(-5);
  });

  test('should handle multiple operations', () => {
    const counter = createCounter(0);
    counter.increment(5);
    counter.decrement(2);
    counter.increment(3);
    expect(counter.getValue()).toBe(6);
  });

  test('should handle edge case with zero increment/decrement', () => {
    const counter = createCounter(5);
    counter.increment(0);
    counter.decrement(0);
    expect(counter.getValue()).toBe(5);
  });
});