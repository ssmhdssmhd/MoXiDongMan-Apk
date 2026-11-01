.class Lcom/google/protobuf/for$if;
.super Lcom/google/protobuf/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/for;->const([BII)Lcom/google/protobuf/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private do:I

.field public final synthetic for:I

.field public final synthetic if:[B

.field public final synthetic new:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/for$if;->if:[B

    iput p2, p0, Lcom/google/protobuf/for$if;->for:I

    iput p3, p0, Lcom/google/protobuf/for$if;->new:I

    invoke-direct {p0}, Lcom/google/protobuf/for;-><init>()V

    return-void
.end method


# virtual methods
.method public case()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public do()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/for$if;->if:[B

    return-object v0
.end method

.method public else()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/for$if;->do:I

    return v0
.end method

.method public for()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public goto(I)Lcom/google/protobuf/for;
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/protobuf/for$if;->new:I

    if-gt p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/protobuf/for$if;->do:I

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid position: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/for$if;->for:I

    return v0
.end method

.method public new()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public this()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/for$if;->new:I

    iget v1, p0, Lcom/google/protobuf/for$if;->do:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/for$if;->new:I

    return v0
.end method
