require 'password_checker'

RSpec.describe do
  it "passes if password is 8 characters" do
    passwordcheck = PasswordChecker.new
    
    expect(passwordcheck.check("families")).to eq true
  end

  it "fails if password is 7 characters" do
    passwordcheck = PasswordChecker.new
    expect { passwordcheck.check("ability") }.to raise_error "Invalid password, must be 8+ characters."
  end

  it "fails if password is 0 characters" do
    passwordcheck = PasswordChecker.new
    expect { passwordcheck.check("") }.to raise_error "Invalid password, must be 8+ characters."
  end

  it "passes if password is 21 characters" do
    passwordcheck = PasswordChecker.new
    
    expect(passwordcheck.check("BalancinGon the Tre3s")).to eq true
  end
  
end
