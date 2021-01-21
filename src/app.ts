import express from "express";
import cors from "cors";
import cookieParser from 'cookie-parser';

let logger = require('morgan');

import {mainPageRoute}  from "./routes/MainPageRoute";


const app = express()

app.use(logger('dev'))
app.use(cors())
app.use(express.json())
app.use(express.urlencoded({ extended: false }))
app.use(cookieParser())
app.set('view engine', 'ejs')
app.use('/favicon.ico', express.static('../public/images'))
app.use(express.static('public'))
app.use('/css',express.static(__dirname + 'public/styles'))

app.use('/', mainPageRoute)


app.listen(8989, () => {
    console.log(`Server run to http://localhost:8989`);
})
