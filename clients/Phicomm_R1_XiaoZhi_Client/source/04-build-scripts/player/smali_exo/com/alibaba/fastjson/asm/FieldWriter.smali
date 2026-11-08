.class public final Lcom/alibaba/fastjson/asm/FieldWriter;
.super Ljava/lang/Object;


# instance fields
.field private final access:I

.field private final desc:I

.field private final name:I

.field next:Lcom/alibaba/fastjson/asm/FieldWriter;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    if-nez v0, :cond_a

    .line 62
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    goto :goto_e

    .line 64
    :cond_a
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->lastField:Lcom/alibaba/fastjson/asm/FieldWriter;

    iput-object p0, v0, Lcom/alibaba/fastjson/asm/FieldWriter;->next:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 66
    :goto_e
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->lastField:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 67
    iput p2, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->access:I

    .line 68
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->name:I

    .line 69
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->desc:I

    return-void
.end method


# virtual methods
.method getSize()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method put(Lcom/alibaba/fastjson/asm/ByteVector;)V
    .registers 4

    .line 99
    iget v0, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->access:I

    const v1, -0x60001

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->name:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/asm/FieldWriter;->desc:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    return-void
.end method

.method public visitEnd()V
    .registers 1

    return-void
.end method
