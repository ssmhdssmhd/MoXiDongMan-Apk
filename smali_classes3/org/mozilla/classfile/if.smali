.class final Lorg/mozilla/classfile/if;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:[B

.field private do:Ljava/lang/String;

.field private for:S

.field private if:Ljava/lang/String;

.field private new:S

.field private try:S


# direct methods
.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;SS)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mozilla/classfile/if;->do:Ljava/lang/String;

    .line 3
    iput-short p2, p0, Lorg/mozilla/classfile/if;->for:S

    .line 4
    iput-object p3, p0, Lorg/mozilla/classfile/if;->if:Ljava/lang/String;

    .line 5
    iput-short p4, p0, Lorg/mozilla/classfile/if;->new:S

    .line 6
    iput-short p5, p0, Lorg/mozilla/classfile/if;->try:S

    return-void
.end method


# virtual methods
.method public case([BI)I
    .locals 3

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/if;->try:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 2
    iget-short v0, p0, Lorg/mozilla/classfile/if;->for:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 3
    iget-short v0, p0, Lorg/mozilla/classfile/if;->new:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    const/4 v0, 0x1

    .line 4
    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 5
    iget-object v0, p0, Lorg/mozilla/classfile/if;->case:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object p1, p0, Lorg/mozilla/classfile/if;->case:[B

    array-length p1, p1

    add-int/2addr p2, p1

    return p2
.end method

.method public do()S
    .locals 1

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/if;->try:S

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/if;->if:Ljava/lang/String;

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/if;->do:Ljava/lang/String;

    return-object v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/if;->case:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public try([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/classfile/if;->case:[B

    return-void
.end method
