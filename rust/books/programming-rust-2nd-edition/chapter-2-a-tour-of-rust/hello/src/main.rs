fn main() {
    println!("Hello, world!");
    println!("{}", gcd(60, 87));

    let _s = {
        let x: i32 = 180;
        println!("Calculating 183..");
        x + 3
    };

    print!("{}", _s);
}

// Rust Functions
fn gcd(mut n: u64, mut m: u64) -> u64 {
    assert!(n != 0 && m != 0);
    while m != 0 {
        if m < n {
            let t = m;
            m = n;
            n = t;
        }
        m = m % n;
    }
    n
}

// Writing and Running Unit Tests
#[test]
fn test_gcd() {
    assert_eq!(gcd(14, 15), 1);
    assert_eq!(gcd(2 * 3 * 5 * 11 * 17, 3 * 7 * 11 * 13 * 19), 3 * 11);
}
