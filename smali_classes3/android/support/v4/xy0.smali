.class public Landroid/support/v4/xy0;
.super Landroid/support/v4/ty0;
.source "SourceFile"


# instance fields
.field private case:Landroid/support/v4/pe1;

.field private else:Landroid/support/v4/fd1;

.field private for:I

.field private goto:Landroid/support/v4/qe0;

.field private new:I

.field private this:[Landroid/support/v4/pe1;

.field private try:Landroid/support/v4/se0;


# direct methods
.method public constructor <init>(IILandroid/support/v4/se0;Landroid/support/v4/pe1;Landroid/support/v4/fd1;Ljava/lang/String;)V
    .locals 8

    invoke-static {p3, p4}, Landroid/support/v4/uh0;->if(Landroid/support/v4/se0;Landroid/support/v4/pe1;)Landroid/support/v4/qe0;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/xy0;-><init>(IILandroid/support/v4/se0;Landroid/support/v4/pe1;Landroid/support/v4/qe0;Landroid/support/v4/fd1;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILandroid/support/v4/se0;Landroid/support/v4/pe1;Landroid/support/v4/qe0;Landroid/support/v4/fd1;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p7}, Landroid/support/v4/ty0;-><init>(ZLjava/lang/String;)V

    iput p1, p0, Landroid/support/v4/xy0;->for:I

    iput p2, p0, Landroid/support/v4/xy0;->new:I

    iput-object p3, p0, Landroid/support/v4/xy0;->try:Landroid/support/v4/se0;

    iput-object p4, p0, Landroid/support/v4/xy0;->case:Landroid/support/v4/pe1;

    iput-object p5, p0, Landroid/support/v4/xy0;->goto:Landroid/support/v4/qe0;

    iput-object p6, p0, Landroid/support/v4/xy0;->else:Landroid/support/v4/fd1;

    new-instance p1, Landroid/support/v4/re1;

    invoke-direct {p1, p3, p4}, Landroid/support/v4/re1;-><init>(Landroid/support/v4/se0;Landroid/support/v4/pe1;)V

    invoke-virtual {p1}, Landroid/support/v4/re1;->for()[Landroid/support/v4/pe1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/xy0;->this:[Landroid/support/v4/pe1;

    return-void
.end method


# virtual methods
.method public break()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xy0;->case:Landroid/support/v4/pe1;

    invoke-virtual {v0}, Landroid/support/v4/pe1;->final()I

    move-result v0

    return v0
.end method

.method public case()I
    .locals 1

    iget v0, p0, Landroid/support/v4/xy0;->new:I

    return v0
.end method

.method public else()I
    .locals 1

    iget v0, p0, Landroid/support/v4/xy0;->for:I

    return v0
.end method

.method public for()Landroid/support/v4/se0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xy0;->try:Landroid/support/v4/se0;

    return-object v0
.end method

.method public goto()Landroid/support/v4/fd1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xy0;->else:Landroid/support/v4/fd1;

    return-object v0
.end method

.method public new()Landroid/support/v4/pe1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xy0;->case:Landroid/support/v4/pe1;

    return-object v0
.end method

.method public this()[Landroid/support/v4/pe1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xy0;->this:[Landroid/support/v4/pe1;

    return-object v0
.end method

.method public try()Landroid/support/v4/qe0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xy0;->goto:Landroid/support/v4/qe0;

    return-object v0
.end method
