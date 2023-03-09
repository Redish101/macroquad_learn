use macroquad::{text::draw_text, window::next_frame, prelude::BLUE};

pub async fn quad_main() {
    loop {
        draw_text("Hello World", 200.0, 200.0, 72.0, BLUE);
        next_frame().await
    }
}