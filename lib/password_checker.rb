class PasswordChecker
    def check(password)
        if password.length >= 8
            return true
        else 
            fail "Invalid password. Must be 8+ characters"
        end
    end
end