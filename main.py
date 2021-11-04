from typing import Optional

from fastapi import FastAPI
from fastapi.params import Body
from pydantic import BaseModel

app = FastAPI()

posts = [
    {
        "author": "Jhon",
        "comment": "It's a beatiful day in London"
    },
{
        "author": "Pete",
        "comment": "Last Avengets movie: Not so good"
    },
]


@app.get("/")
def root():
    return {"message": "Welcome to my API"}


@app.get("/posts")
def get_posts():
    return posts


# title str, content str
class Post(BaseModel):
    title: str
    content: str
    published: bool = True
    rating: Optional[int] = None


@app.post("/post")
def post_post(new_post: Post):
    return {"new_post": {
        "title": new_post.title,
        'content': new_post.content,
        "published": new_post.published,
        "rating": new_post.rating
    }}
