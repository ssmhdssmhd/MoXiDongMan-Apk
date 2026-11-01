.class final Lorg/mozilla/classfile/do;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:S

.field private do:S

.field private else:S

.field private for:S

.field private goto:I

.field private if:S

.field private new:Z

.field private try:S


# direct methods
.method public constructor <init>(SSS)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-short p1, p0, Lorg/mozilla/classfile/do;->do:S

    .line 3
    iput-short p2, p0, Lorg/mozilla/classfile/do;->if:S

    .line 4
    iput-short p3, p0, Lorg/mozilla/classfile/do;->for:S

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/mozilla/classfile/do;->new:Z

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/classfile/do;->new:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    return v0
.end method

.method public for([BI)I
    .locals 1

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/do;->for:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 2
    iget-short v0, p0, Lorg/mozilla/classfile/do;->do:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 3
    iget-short v0, p0, Lorg/mozilla/classfile/do;->if:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 4
    iget-boolean v0, p0, Lorg/mozilla/classfile/do;->new:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 7
    iget-short v0, p0, Lorg/mozilla/classfile/do;->try:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 8
    iget-short v0, p0, Lorg/mozilla/classfile/do;->case:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 9
    iget-short v0, p0, Lorg/mozilla/classfile/do;->else:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 10
    iget v0, p0, Lorg/mozilla/classfile/do;->goto:I

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public if(SSSI)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/mozilla/classfile/do;->new:Z

    .line 2
    iput-short p1, p0, Lorg/mozilla/classfile/do;->try:S

    .line 3
    iput-short p2, p0, Lorg/mozilla/classfile/do;->case:S

    .line 4
    iput-short p3, p0, Lorg/mozilla/classfile/do;->else:S

    .line 5
    iput p4, p0, Lorg/mozilla/classfile/do;->goto:I

    return-void
.end method
