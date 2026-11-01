.class abstract Lcom/google/protobuf/for;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/for;
    .locals 1

    const-string v0, "buffer"

    .line 1
    invoke-static {p0, v0}, Lcom/google/protobuf/Internal;->try(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/protobuf/for$do;

    invoke-direct {v0, p0}, Lcom/google/protobuf/for$do;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static catch([B)Lcom/google/protobuf/for;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/for;->const([BII)Lcom/google/protobuf/for;

    move-result-object p0

    return-object p0
.end method

.method public static class([BII)Lcom/google/protobuf/for;
    .locals 3

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v0, p1, p2

    .line 1
    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/for;->const([BII)Lcom/google/protobuf/for;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p0, p0

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "bytes.length=%d, offset=%d, length=%d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static const([BII)Lcom/google/protobuf/for;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/for$if;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/for$if;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract case()Ljava/nio/ByteBuffer;
.end method

.method public abstract do()[B
.end method

.method public abstract else()I
.end method

.method public abstract for()Z
.end method

.method public abstract goto(I)Lcom/google/protobuf/for;
.end method

.method public abstract if()I
.end method

.method public abstract new()Z
.end method

.method public abstract this()I
.end method

.method public abstract try()I
.end method
