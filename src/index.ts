import express, { Request, Response} from "express"
import cors from "cors"
import { productRouter } from "./routers/productRouter"

const app = express()

app.use(cors())
app.use(express.json())

app.listen(3003, () => console.log("servidor rodando na porta 3003"))

app.get("ping", (req: Request, res: Response) => {
    res.status(200).send('rodando')
})

app.use("/products", productRouter)