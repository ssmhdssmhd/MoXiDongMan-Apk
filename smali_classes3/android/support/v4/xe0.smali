.class public Landroid/support/v4/xe0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final case:Ljava/math/BigInteger;

.field public final do:Ljava/math/BigInteger;

.field public final else:Ljava/math/BigInteger;

.field public final for:Ljava/math/BigInteger;

.field public final goto:Ljava/math/BigInteger;

.field public final if:Ljava/math/BigInteger;

.field public final new:Ljava/math/BigInteger;

.field public final this:I

.field public final try:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "v1"

    invoke-static {p3, v0}, Landroid/support/v4/xe0;->do([Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string v0, "v2"

    invoke-static {p4, v0}, Landroid/support/v4/xe0;->do([Ljava/math/BigInteger;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v4/xe0;->do:Ljava/math/BigInteger;

    iput-object p2, p0, Landroid/support/v4/xe0;->if:Ljava/math/BigInteger;

    const/4 p1, 0x0

    aget-object p2, p3, p1

    iput-object p2, p0, Landroid/support/v4/xe0;->for:Ljava/math/BigInteger;

    const/4 p2, 0x1

    aget-object p3, p3, p2

    iput-object p3, p0, Landroid/support/v4/xe0;->new:Ljava/math/BigInteger;

    aget-object p1, p4, p1

    iput-object p1, p0, Landroid/support/v4/xe0;->try:Ljava/math/BigInteger;

    aget-object p1, p4, p2

    iput-object p1, p0, Landroid/support/v4/xe0;->case:Ljava/math/BigInteger;

    iput-object p5, p0, Landroid/support/v4/xe0;->else:Ljava/math/BigInteger;

    iput-object p6, p0, Landroid/support/v4/xe0;->goto:Ljava/math/BigInteger;

    iput p7, p0, Landroid/support/v4/xe0;->this:I

    return-void
.end method

.method private static do([Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must consist of exactly 2 (non-null) values"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public break()[Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    iget-object v1, p0, Landroid/support/v4/xe0;->try:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/v4/xe0;->case:Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public case()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xe0;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public catch()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xe0;->try:Ljava/math/BigInteger;

    return-object v0
.end method

.method public class()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xe0;->case:Ljava/math/BigInteger;

    return-object v0
.end method

.method public else()[Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    iget-object v1, p0, Landroid/support/v4/xe0;->for:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/v4/xe0;->new:Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/xe0;->this:I

    return v0
.end method

.method public goto()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xe0;->for:Ljava/math/BigInteger;

    return-object v0
.end method

.method public if()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xe0;->do:Ljava/math/BigInteger;

    return-object v0
.end method

.method public new()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xe0;->else:Ljava/math/BigInteger;

    return-object v0
.end method

.method public this()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xe0;->new:Ljava/math/BigInteger;

    return-object v0
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xe0;->goto:Ljava/math/BigInteger;

    return-object v0
.end method
