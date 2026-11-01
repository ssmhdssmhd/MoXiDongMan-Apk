.class public Lorg/antlr/v4/runtime/try$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final synthetic case:Z


# instance fields
.field private do:Lorg/antlr/v4/runtime/try$for;

.field private for:Ljava/nio/CharBuffer;

.field private if:Ljava/nio/ByteBuffer;

.field private new:Ljava/nio/IntBuffer;

.field private try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lorg/antlr/v4/runtime/try$for;->BYTE:Lorg/antlr/v4/runtime/try$for;

    iput-object v0, p0, Lorg/antlr/v4/runtime/try$if;->do:Lorg/antlr/v4/runtime/try$for;

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    .line 6
    iput-object p1, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lorg/antlr/v4/runtime/try$if;->try:I

    return-void
.end method

.method public synthetic constructor <init>(ILorg/antlr/v4/runtime/try$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/try$if;-><init>(I)V

    return-void
.end method

.method private else(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lorg/antlr/v4/runtime/try$for;->CHAR:Lorg/antlr/v4/runtime/try$for;

    iput-object v0, p0, Lorg/antlr/v4/runtime/try$if;->do:Lorg/antlr/v4/runtime/try$for;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    .line 7
    iput-object p1, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    return-void
.end method

.method private for(Ljava/nio/CharBuffer;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 4
    iget-object v3, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 5
    iget-object v4, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    iget-object v5, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    :goto_0
    if-ge v1, v2, :cond_2

    .line 6
    aget-char v5, v0, v1

    const/16 v6, 0xff

    if-gt v5, v6, :cond_0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 7
    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/try$if;->else(I)V

    .line 12
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/try$if;->new(Ljava/nio/CharBuffer;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/try$if;->goto(I)V

    .line 14
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/try$if;->try(Ljava/nio/CharBuffer;)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    iget-object p1, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private goto(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lorg/antlr/v4/runtime/try$for;->INT:Lorg/antlr/v4/runtime/try$for;

    iput-object v0, p0, Lorg/antlr/v4/runtime/try$if;->do:Lorg/antlr/v4/runtime/try$for;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    .line 7
    iput-object p1, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    return-void
.end method

.method private if(Ljava/nio/CharBuffer;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/try$do;->do:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/try$if;->do:Lorg/antlr/v4/runtime/try$for;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/try$if;->try(Ljava/nio/CharBuffer;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/try$if;->new(Ljava/nio/CharBuffer;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/try$if;->for(Ljava/nio/CharBuffer;)V

    :goto_0
    return-void
.end method

.method private new(Ljava/nio/CharBuffer;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 4
    iget-object v3, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    .line 5
    iget-object v4, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    iget-object v5, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6
    aget-char v5, v0, v1

    .line 7
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8
    aput-char v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/try$if;->this(I)V

    .line 12
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/try$if;->try(Ljava/nio/CharBuffer;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    iget-object p1, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static super(I)I
    .locals 4

    add-int/lit8 p0, p0, -0x1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private this(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lorg/antlr/v4/runtime/try$for;->INT:Lorg/antlr/v4/runtime/try$for;

    iput-object v0, p0, Lorg/antlr/v4/runtime/try$if;->do:Lorg/antlr/v4/runtime/try$for;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    .line 7
    iput-object p1, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    return-void
.end method

.method private try(Ljava/nio/CharBuffer;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 4
    iget-object v3, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    .line 5
    iget-object v4, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v4

    iget-object v5, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    :goto_0
    const/4 v5, -0x1

    const v6, 0xffff

    if-ge v1, v2, :cond_4

    .line 6
    aget-char v7, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 7
    iget v8, p0, Lorg/antlr/v4/runtime/try$if;->try:I

    if-eq v8, v5, :cond_2

    .line 8
    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 9
    iget v6, p0, Lorg/antlr/v4/runtime/try$if;->try:I

    int-to-char v6, v6

    invoke-static {v6, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 10
    iput v5, p0, Lorg/antlr/v4/runtime/try$if;->try:I

    goto :goto_0

    .line 11
    :cond_0
    iget v8, p0, Lorg/antlr/v4/runtime/try$if;->try:I

    aput v8, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 12
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int v5, v7, v6

    .line 13
    iput v5, p0, Lorg/antlr/v4/runtime/try$if;->try:I

    goto :goto_0

    :cond_1
    and-int/2addr v6, v7

    .line 14
    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 15
    iput v5, p0, Lorg/antlr/v4/runtime/try$if;->try:I

    goto :goto_0

    .line 16
    :cond_2
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3

    and-int v5, v7, v6

    .line 17
    iput v5, p0, Lorg/antlr/v4/runtime/try$if;->try:I

    goto :goto_0

    :cond_3
    and-int v5, v7, v6

    .line 18
    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    :cond_4
    iget v0, p0, Lorg/antlr/v4/runtime/try$if;->try:I

    if-eq v0, v5, :cond_5

    and-int/2addr v0, v6

    .line 20
    aput v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 21
    :cond_5
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    iget-object p1, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public break(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/try$do;->do:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/try$if;->do:Lorg/antlr/v4/runtime/try$for;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 3
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/antlr/v4/runtime/try$if;->super(I)I

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 7
    iput-object p1, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 9
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/antlr/v4/runtime/try$if;->super(I)I

    move-result p1

    .line 10
    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 13
    iput-object p1, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 15
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/antlr/v4/runtime/try$if;->super(I)I

    move-result p1

    .line 16
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 18
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 19
    iput-object p1, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    :cond_3
    :goto_0
    return-void
.end method

.method public case()Lorg/antlr/v4/runtime/try;
    .locals 7

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/try$do;->do:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/try$if;->do:Lorg/antlr/v4/runtime/try$for;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 5
    :goto_0
    new-instance v0, Lorg/antlr/v4/runtime/try;

    iget-object v2, p0, Lorg/antlr/v4/runtime/try$if;->do:Lorg/antlr/v4/runtime/try$for;

    iget-object v3, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    iget-object v5, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/antlr/v4/runtime/try;-><init>(Lorg/antlr/v4/runtime/try$for;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;Lorg/antlr/v4/runtime/try$do;)V

    return-object v0
.end method

.method public catch()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->if:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public class()Ljava/nio/CharBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->for:Ljava/nio/CharBuffer;

    return-object v0
.end method

.method public const()Ljava/nio/IntBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->new:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public do(Ljava/nio/CharBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/try$if;->break(I)V

    .line 2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/try$if;->if(Ljava/nio/CharBuffer;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TODO"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final()Lorg/antlr/v4/runtime/try$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try$if;->do:Lorg/antlr/v4/runtime/try$for;

    return-object v0
.end method
