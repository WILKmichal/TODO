import { Router } from 'express';
import { Request, Response } from 'express';

const route: Router = Router();

route.get('/', (req: Request, res: Response, next: () => void) => {
    res.render('mainPage') 
    next()
})

export { route as mainPageRoute }