.class public Landroid/support/v4/rn0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static case:I = 0x0

.field public static else:I = 0x0

.field public static final for:I = 0x3e8

.field public static goto:I

.field public static final new:Landroid/support/v4/rn0;

.field public static this:I

.field public static try:[Landroid/support/v4/rn0;


# instance fields
.field public do:I

.field public if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/rn0;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/rn0;-><init>(II)V

    sput-object v0, Landroid/support/v4/rn0;->new:Landroid/support/v4/rn0;

    const/16 v0, 0x3e9

    new-array v0, v0, [Landroid/support/v4/rn0;

    .line 2
    sput-object v0, Landroid/support/v4/rn0;->try:[Landroid/support/v4/rn0;

    const/4 v0, 0x0

    .line 3
    sput v0, Landroid/support/v4/rn0;->case:I

    .line 4
    sput v0, Landroid/support/v4/rn0;->else:I

    .line 5
    sput v0, Landroid/support/v4/rn0;->goto:I

    .line 6
    sput v0, Landroid/support/v4/rn0;->this:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/rn0;->do:I

    iput p2, p0, Landroid/support/v4/rn0;->if:I

    return-void
.end method

.method public static case(II)Landroid/support/v4/rn0;
    .locals 1

    if-ne p0, p1, :cond_2

    if-ltz p0, :cond_2

    const/16 v0, 0x3e8

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Landroid/support/v4/rn0;->try:[Landroid/support/v4/rn0;

    aget-object v0, p1, p0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/support/v4/rn0;

    invoke-direct {v0, p0, p0}, Landroid/support/v4/rn0;-><init>(II)V

    aput-object v0, p1, p0

    .line 3
    :cond_1
    sget-object p1, Landroid/support/v4/rn0;->try:[Landroid/support/v4/rn0;

    aget-object p0, p1, p0

    return-object p0

    .line 4
    :cond_2
    :goto_0
    new-instance v0, Landroid/support/v4/rn0;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/rn0;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public break(Landroid/support/v4/rn0;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/rn0;->do:I

    iget v1, p1, Landroid/support/v4/rn0;->do:I

    if-le v0, v1, :cond_0

    iget p1, p1, Landroid/support/v4/rn0;->if:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public catch(Landroid/support/v4/rn0;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/rn0;->do:I

    iget p1, p1, Landroid/support/v4/rn0;->do:I

    if-ge v0, p1, :cond_0

    iget v0, p0, Landroid/support/v4/rn0;->if:I

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public class(Landroid/support/v4/rn0;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/rn0;->do:I

    iget p1, p1, Landroid/support/v4/rn0;->do:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/support/v4/rn0;->if:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public const(Landroid/support/v4/rn0;)Landroid/support/v4/rn0;
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/rn0;->do:I

    iget v1, p1, Landroid/support/v4/rn0;->do:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroid/support/v4/rn0;->if:I

    iget p1, p1, Landroid/support/v4/rn0;->if:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/rn0;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/rn0;->do:I

    iget v1, p1, Landroid/support/v4/rn0;->if:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v4/rn0;->if:I

    iget p1, p1, Landroid/support/v4/rn0;->do:I

    sub-int/2addr p1, v2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public else(Landroid/support/v4/rn0;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/support/v4/rn0;->do:I

    iget v1, p0, Landroid/support/v4/rn0;->do:I

    if-lt v0, v1, :cond_0

    iget p1, p1, Landroid/support/v4/rn0;->if:I

    iget v0, p0, Landroid/support/v4/rn0;->if:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p1, Landroid/support/v4/rn0;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/rn0;

    .line 3
    iget v1, p0, Landroid/support/v4/rn0;->do:I

    iget v2, p1, Landroid/support/v4/rn0;->do:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/support/v4/rn0;->if:I

    iget p1, p1, Landroid/support/v4/rn0;->if:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public for(Landroid/support/v4/rn0;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/rn0;->catch(Landroid/support/v4/rn0;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/rn0;->this(Landroid/support/v4/rn0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public goto(Landroid/support/v4/rn0;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/rn0;->do:I

    iget p1, p1, Landroid/support/v4/rn0;->do:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/rn0;->do:I

    const/16 v1, 0x2c9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Landroid/support/v4/rn0;->if:I

    add-int/2addr v1, v0

    return v1
.end method

.method public if(Landroid/support/v4/rn0;)Landroid/support/v4/rn0;
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Landroid/support/v4/rn0;->class(Landroid/support/v4/rn0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroid/support/v4/rn0;->do:I

    iget p1, p1, Landroid/support/v4/rn0;->if:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroid/support/v4/rn0;->if:I

    invoke-static {p1, v0}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/v4/rn0;->break(Landroid/support/v4/rn0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Landroid/support/v4/rn0;->do:I

    iget p1, p1, Landroid/support/v4/rn0;->do:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public new(Landroid/support/v4/rn0;)Landroid/support/v4/rn0;
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/rn0;->do:I

    iget v1, p1, Landroid/support/v4/rn0;->do:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/support/v4/rn0;->if:I

    iget p1, p1, Landroid/support/v4/rn0;->if:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object p1

    return-object p1
.end method

.method public this(Landroid/support/v4/rn0;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/rn0;->do:I

    iget p1, p1, Landroid/support/v4/rn0;->if:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/support/v4/rn0;->do:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/rn0;->if:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/rn0;->if:I

    iget v1, p0, Landroid/support/v4/rn0;->do:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
