.class public Lorg/objectweb/asm/break;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public break:Lorg/objectweb/asm/break;

.field private case:[I

.field public catch:Lorg/objectweb/asm/try;

.field public class:Lorg/objectweb/asm/break;

.field public do:Ljava/lang/Object;

.field public else:I

.field public for:I

.field public goto:I

.field public if:I

.field public new:I

.field public this:Lorg/objectweb/asm/else;

.field private try:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private if(II)V
    .locals 4

    iget-object v0, p0, Lorg/objectweb/asm/break;->case:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/objectweb/asm/break;->case:[I

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/break;->try:I

    iget-object v2, p0, Lorg/objectweb/asm/break;->case:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    array-length v0, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/objectweb/asm/break;->case:[I

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/break;->case:[I

    iget v1, p0, Lorg/objectweb/asm/break;->try:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/break;->try:I

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/objectweb/asm/break;->try:I

    aput p2, v0, v2

    return-void
.end method


# virtual methods
.method public case(Lorg/objectweb/asm/break;)Z
    .locals 4

    iget v0, p0, Lorg/objectweb/asm/break;->if:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p1, Lorg/objectweb/asm/break;->if:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/objectweb/asm/break;->case:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget v2, v2, v0

    iget-object v3, p1, Lorg/objectweb/asm/break;->case:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public do()Lorg/objectweb/asm/break;
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/break;->this:Lorg/objectweb/asm/else;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/objectweb/asm/else;->do:Lorg/objectweb/asm/break;

    :goto_0
    return-object v0
.end method

.method public else(Lorg/objectweb/asm/catch;I[B)Z
    .locals 6

    iget p1, p0, Lorg/objectweb/asm/break;->if:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/objectweb/asm/break;->if:I

    iput p2, p0, Lorg/objectweb/asm/break;->new:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/objectweb/asm/break;->try:I

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lorg/objectweb/asm/break;->case:[I

    add-int/lit8 v2, p1, 0x1

    aget p1, v1, p1

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ltz p1, :cond_3

    sub-int p1, p2, p1

    const/16 v4, -0x8000

    if-lt p1, v4, :cond_0

    const/16 v4, 0x7fff

    if-le p1, v4, :cond_2

    :cond_0
    add-int/lit8 v0, v1, -0x1

    aget-byte v4, p3, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa8

    if-gt v4, v5, :cond_1

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, p3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x14

    int-to-byte v4, v4

    aput-byte v4, p3, v0

    :goto_1
    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p3, v1

    int-to-byte p1, p1

    aput-byte p1, p3, v2

    goto :goto_2

    :cond_3
    add-int/2addr p1, p2

    add-int/2addr p1, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v4, p1, 0x18

    int-to-byte v4, v4

    aput-byte v4, p3, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p3, v1

    int-to-byte p1, p1

    aput-byte p1, p3, v2

    :goto_2
    move p1, v3

    goto :goto_0

    :cond_4
    return v0
.end method

.method public for(JI)V
    .locals 3

    iget v0, p0, Lorg/objectweb/asm/break;->if:I

    and-int/lit16 v1, v0, 0x400

    const/16 v2, 0x20

    if-nez v1, :cond_0

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/objectweb/asm/break;->if:I

    div-int/2addr p3, v2

    add-int/lit8 p3, p3, 0x1

    new-array p3, p3, [I

    iput-object p3, p0, Lorg/objectweb/asm/break;->case:[I

    :cond_0
    iget-object p3, p0, Lorg/objectweb/asm/break;->case:[I

    ushr-long v0, p1, v2

    long-to-int v1, v0

    aget v0, p3, v1

    long-to-int p2, p1

    or-int p1, v0, p2

    aput p1, p3, v1

    return-void
.end method

.method public goto(Lorg/objectweb/asm/break;JI)V
    .locals 5

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, v0, Lorg/objectweb/asm/break;->class:Lorg/objectweb/asm/break;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/objectweb/asm/break;->class:Lorg/objectweb/asm/break;

    if-eqz p1, :cond_1

    iget v2, v0, Lorg/objectweb/asm/break;->if:I

    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Lorg/objectweb/asm/break;->if:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_4

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/break;->case(Lorg/objectweb/asm/break;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lorg/objectweb/asm/try;

    invoke-direct {v2}, Lorg/objectweb/asm/try;-><init>()V

    iget v3, v0, Lorg/objectweb/asm/break;->else:I

    iput v3, v2, Lorg/objectweb/asm/try;->do:I

    iget-object v3, p1, Lorg/objectweb/asm/break;->catch:Lorg/objectweb/asm/try;

    iget-object v3, v3, Lorg/objectweb/asm/try;->if:Lorg/objectweb/asm/break;

    iput-object v3, v2, Lorg/objectweb/asm/try;->if:Lorg/objectweb/asm/break;

    iget-object v3, v0, Lorg/objectweb/asm/break;->catch:Lorg/objectweb/asm/try;

    iput-object v3, v2, Lorg/objectweb/asm/try;->for:Lorg/objectweb/asm/try;

    iput-object v2, v0, Lorg/objectweb/asm/break;->catch:Lorg/objectweb/asm/try;

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p2, p3}, Lorg/objectweb/asm/break;->try(J)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p2, p3, p4}, Lorg/objectweb/asm/break;->for(JI)V

    :cond_4
    :goto_2
    iget-object v2, v0, Lorg/objectweb/asm/break;->catch:Lorg/objectweb/asm/try;

    :goto_3
    if-eqz v2, :cond_2

    iget v3, v0, Lorg/objectweb/asm/break;->if:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/objectweb/asm/break;->catch:Lorg/objectweb/asm/try;

    iget-object v3, v3, Lorg/objectweb/asm/try;->for:Lorg/objectweb/asm/try;

    if-eq v2, v3, :cond_6

    :cond_5
    iget-object v3, v2, Lorg/objectweb/asm/try;->if:Lorg/objectweb/asm/break;

    iget-object v4, v3, Lorg/objectweb/asm/break;->class:Lorg/objectweb/asm/break;

    if-nez v4, :cond_6

    iput-object v1, v3, Lorg/objectweb/asm/break;->class:Lorg/objectweb/asm/break;

    move-object v1, v3

    :cond_6
    iget-object v2, v2, Lorg/objectweb/asm/try;->for:Lorg/objectweb/asm/try;

    goto :goto_3

    :cond_7
    return-void
.end method

.method public new(Lorg/objectweb/asm/catch;Landroid/support/v4/ee;IZ)V
    .locals 0

    iget p1, p0, Lorg/objectweb/asm/break;->if:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-eqz p4, :cond_0

    rsub-int/lit8 p3, p3, -0x1

    iget p4, p2, Landroid/support/v4/ee;->if:I

    invoke-direct {p0, p3, p4}, Lorg/objectweb/asm/break;->if(II)V

    goto :goto_0

    :cond_0
    iget p4, p2, Landroid/support/v4/ee;->if:I

    invoke-direct {p0, p3, p4}, Lorg/objectweb/asm/break;->if(II)V

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/objectweb/asm/break;->new:I

    sub-int/2addr p1, p3

    if-eqz p4, :cond_2

    :goto_0
    invoke-virtual {p2, p1}, Landroid/support/v4/ee;->else(I)Landroid/support/v4/ee;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p2, p1}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    :goto_2
    return-void
.end method

.method public this()I
    .locals 2

    iget v0, p0, Lorg/objectweb/asm/break;->if:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/break;->new:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label offset position has not been resolved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(J)Z
    .locals 4

    iget v0, p0, Lorg/objectweb/asm/break;->if:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/break;->case:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v3, v2

    aget v0, v0, v3

    long-to-int p2, p1

    and-int p1, v0, p2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
