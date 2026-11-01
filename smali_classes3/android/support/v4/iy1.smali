.class public Landroid/support/v4/iy1;
.super Landroid/support/v4/hy1;
.source "SourceFile"


# instance fields
.field private case:Z

.field private else:Z

.field private goto:I

.field private final try:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Landroid/support/v4/hy1;-><init>(I)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    return-void
.end method

.method private import()V
    .locals 2

    iget v0, p0, Landroid/support/v4/iy1;->goto:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget v0, p0, Landroid/support/v4/iy1;->goto:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v4/iy1;->goto:I

    return-void
.end method

.method private while()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/iy1;->case:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/iy1;->case:Z

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method


# virtual methods
.method public break()Landroid/support/v4/hy1;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public case()Landroid/support/v4/hy1;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public catch()Landroid/support/v4/hy1;
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/iy1;->while()V

    iget-boolean v0, p0, Landroid/support/v4/iy1;->else:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/iy1;->else:Z

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    return-object p0
.end method

.method public class()Landroid/support/v4/hy1;
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/iy1;->while()V

    iget-boolean v0, p0, Landroid/support/v4/iy1;->else:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public const()Landroid/support/v4/hy1;
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/iy1;->while()V

    return-object p0
.end method

.method public do()Landroid/support/v4/hy1;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public else(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/iy1;->case:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/iy1;->case:Z

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final(C)Landroid/support/v4/hy1;
    .locals 2

    iget v0, p0, Landroid/support/v4/iy1;->goto:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/iy1;->goto:I

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    return-object p0
.end method

.method public for()Landroid/support/v4/hy1;
    .locals 0

    return-object p0
.end method

.method public goto(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/iy1;->import()V

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Landroid/support/v4/iy1;->goto:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/support/v4/iy1;->goto:I

    return-void
.end method

.method public if(C)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public new(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Landroid/support/v4/iy1;->goto:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/support/v4/iy1;->goto:I

    return-void
.end method

.method public super()V
    .locals 2

    iget v0, p0, Landroid/support/v4/iy1;->goto:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/iy1;->goto:I

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public this()Landroid/support/v4/hy1;
    .locals 0

    return-object p0
.end method

.method public throw(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/iy1;->import()V

    iget-object v0, p0, Landroid/support/v4/iy1;->try:Ljava/lang/StringBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method
