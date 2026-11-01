.class public Landroid/support/v4/gz0;
.super Landroid/support/v4/dz0;
.source "SourceFile"


# instance fields
.field private break:Landroid/support/v4/fd1;

.field private case:Landroid/support/v4/se0;

.field private catch:Landroid/support/v4/qe0;

.field private class:[Landroid/support/v4/pe1;

.field private else:Landroid/support/v4/pe1;

.field private for:Ljava/lang/String;

.field private goto:Landroid/support/v4/qe0;

.field private new:I

.field private this:Landroid/support/v4/fd1;

.field private try:I


# direct methods
.method public constructor <init>(IILandroid/support/v4/se0;Landroid/support/v4/pe1;Landroid/support/v4/fd1;Landroid/support/v4/fd1;Landroid/support/v4/qe0;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/dz0;-><init>(ZLandroid/support/v4/ez0;)V

    iput p2, p0, Landroid/support/v4/gz0;->try:I

    iput p1, p0, Landroid/support/v4/gz0;->new:I

    iput-object p3, p0, Landroid/support/v4/gz0;->case:Landroid/support/v4/se0;

    iput-object p4, p0, Landroid/support/v4/gz0;->else:Landroid/support/v4/pe1;

    iput-object p7, p0, Landroid/support/v4/gz0;->goto:Landroid/support/v4/qe0;

    iput-object p5, p0, Landroid/support/v4/gz0;->this:Landroid/support/v4/fd1;

    iput-object p6, p0, Landroid/support/v4/gz0;->break:Landroid/support/v4/fd1;

    invoke-static {p3, p4}, Landroid/support/v4/uh0;->if(Landroid/support/v4/se0;Landroid/support/v4/pe1;)Landroid/support/v4/qe0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/gz0;->catch:Landroid/support/v4/qe0;

    new-instance p1, Landroid/support/v4/re1;

    invoke-direct {p1, p3, p4}, Landroid/support/v4/re1;-><init>(Landroid/support/v4/se0;Landroid/support/v4/pe1;)V

    invoke-virtual {p1}, Landroid/support/v4/re1;->for()[Landroid/support/v4/pe1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/gz0;->class:[Landroid/support/v4/pe1;

    return-void
.end method

.method public constructor <init>(II[B[B[B[B[B[B[[B)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/dz0;-><init>(ZLandroid/support/v4/ez0;)V

    iput p1, p0, Landroid/support/v4/gz0;->new:I

    iput p2, p0, Landroid/support/v4/gz0;->try:I

    new-instance p1, Landroid/support/v4/se0;

    invoke-direct {p1, p3}, Landroid/support/v4/se0;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/gz0;->case:Landroid/support/v4/se0;

    new-instance p2, Landroid/support/v4/pe1;

    invoke-direct {p2, p1, p4}, Landroid/support/v4/pe1;-><init>(Landroid/support/v4/se0;[B)V

    iput-object p2, p0, Landroid/support/v4/gz0;->else:Landroid/support/v4/pe1;

    new-instance p1, Landroid/support/v4/qe0;

    invoke-direct {p1, p5}, Landroid/support/v4/qe0;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/gz0;->goto:Landroid/support/v4/qe0;

    new-instance p1, Landroid/support/v4/fd1;

    invoke-direct {p1, p6}, Landroid/support/v4/fd1;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/gz0;->this:Landroid/support/v4/fd1;

    new-instance p1, Landroid/support/v4/fd1;

    invoke-direct {p1, p7}, Landroid/support/v4/fd1;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/gz0;->break:Landroid/support/v4/fd1;

    new-instance p1, Landroid/support/v4/qe0;

    invoke-direct {p1, p8}, Landroid/support/v4/qe0;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/gz0;->catch:Landroid/support/v4/qe0;

    array-length p1, p9

    new-array p1, p1, [Landroid/support/v4/pe1;

    iput-object p1, p0, Landroid/support/v4/gz0;->class:[Landroid/support/v4/pe1;

    const/4 p1, 0x0

    :goto_0
    array-length p2, p9

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Landroid/support/v4/gz0;->class:[Landroid/support/v4/pe1;

    new-instance p3, Landroid/support/v4/pe1;

    iget-object p4, p0, Landroid/support/v4/gz0;->case:Landroid/support/v4/se0;

    aget-object p5, p9, p1

    invoke-direct {p3, p4, p5}, Landroid/support/v4/pe1;-><init>(Landroid/support/v4/se0;[B)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public break()[Landroid/support/v4/pe1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gz0;->class:[Landroid/support/v4/pe1;

    return-object v0
.end method

.method public case()I
    .locals 1

    iget v0, p0, Landroid/support/v4/gz0;->try:I

    return v0
.end method

.method public catch()Landroid/support/v4/qe0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gz0;->goto:Landroid/support/v4/qe0;

    return-object v0
.end method

.method public else()I
    .locals 1

    iget v0, p0, Landroid/support/v4/gz0;->new:I

    return v0
.end method

.method public for()Landroid/support/v4/se0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gz0;->case:Landroid/support/v4/se0;

    return-object v0
.end method

.method public goto()Landroid/support/v4/fd1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gz0;->this:Landroid/support/v4/fd1;

    return-object v0
.end method

.method public new()Landroid/support/v4/pe1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gz0;->else:Landroid/support/v4/pe1;

    return-object v0
.end method

.method public this()Landroid/support/v4/fd1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gz0;->break:Landroid/support/v4/fd1;

    return-object v0
.end method

.method public try()Landroid/support/v4/qe0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gz0;->catch:Landroid/support/v4/qe0;

    return-object v0
.end method
