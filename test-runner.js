// Simple test runner to verify tests fail before implementation
try {
  const { createCounter } = require('./counter');
  console.log('❌ FAILURE: Tests should not pass - counter module should not exist yet!');
  process.exit(1);
} catch (error) {
  if (error.code === 'MODULE_NOT_FOUND') {
    console.log('✅ SUCCESS: Tests fail as expected - counter module not found');
    console.log('Error message:', error.message);
  } else {
    console.log('❌ UNEXPECTED ERROR:', error.message);
    process.exit(1);
  }
}