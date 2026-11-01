.class final Lorg/mozilla/classfile/new;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:I

.field private do:I

.field private for:J

.field private if:I

.field private new:Ljava/lang/String;

.field private try:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/mozilla/classfile/new;->do:I

    .line 3
    iput p2, p0, Lorg/mozilla/classfile/new;->if:I

    .line 4
    iput-object p3, p0, Lorg/mozilla/classfile/new;->new:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/mozilla/classfile/new;->try:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p4

    mul-int p3, p3, p4

    add-int/2addr p2, p3

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/classfile/new;->case:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    instance-of v0, p1, Lorg/mozilla/classfile/new;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lorg/mozilla/classfile/new;

    .line 3
    iget v0, p0, Lorg/mozilla/classfile/new;->do:I

    iget v2, p1, Lorg/mozilla/classfile/new;->do:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_4

    const/16 v2, 0x12

    if-ne v0, v2, :cond_3

    .line 4
    iget v0, p0, Lorg/mozilla/classfile/new;->if:I

    iget v2, p1, Lorg/mozilla/classfile/new;->if:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/mozilla/classfile/new;->new:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/new;->new:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/classfile/new;->try:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/classfile/new;->try:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unsupported constant type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    iget-object v0, p0, Lorg/mozilla/classfile/new;->new:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/new;->new:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/classfile/new;->try:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/classfile/new;->try:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    .line 9
    :cond_6
    iget-wide v4, p0, Lorg/mozilla/classfile/new;->for:J

    iget-wide v6, p1, Lorg/mozilla/classfile/new;->for:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    .line 10
    :cond_8
    iget v0, p0, Lorg/mozilla/classfile/new;->if:I

    iget p1, p1, Lorg/mozilla/classfile/new;->if:I

    if-ne v0, p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/new;->case:I

    return v0
.end method
