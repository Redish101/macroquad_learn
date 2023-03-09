use macroquad::{text::draw_text, prelude::BLUE, window::next_frame};

#[macroquad::main("Macroquad Learn")]
async fn main() {
    loop {
        draw_text("Hello World", 200.0, 200.0, 17.0, BLUE);
        next_frame().await
    }
}
