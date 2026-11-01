.class public Landroid/support/v4/ob1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/ob1;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Landroid/support/v4/ob1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/support/v4/ob1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Landroid/support/v4/ob1;

    .line 3
    sget-object v1, Landroid/support/v4/r51;->do:Landroid/support/v4/r51;

    iget-object v3, p0, Landroid/support/v4/ob1;->a:Ljava/lang/Object;

    iget-object v4, p1, Landroid/support/v4/ob1;->a:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/r51;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/ob1;->b:Ljava/lang/Object;

    iget-object p1, p1, Landroid/support/v4/ob1;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3, p1}, Landroid/support/v4/r51;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/y01;->for()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/ob1;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/y01;->case(ILjava/lang/Object;)I

    move-result v0

    .line 3
    iget-object v1, p0, Landroid/support/v4/ob1;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/y01;->case(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/support/v4/y01;->do(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Landroid/support/v4/ob1;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/v4/ob1;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "(%s, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
