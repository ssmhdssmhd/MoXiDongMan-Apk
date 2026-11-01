.class public Landroid/support/v4/dj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/support/v4/dj2;",
        ">;"
    }
.end annotation


# instance fields
.field private do:Ljava/lang/Object;

.field private for:Z

.field private if:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/dj2;->if:Z

    .line 3
    iput-boolean v0, p0, Landroid/support/v4/dj2;->for:Z

    .line 4
    iput-object p1, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    return-void
.end method

.method public static break(Ljava/lang/Object;)Landroid/support/v4/dj2;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/dj2;

    invoke-direct {v0, p0}, Landroid/support/v4/dj2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public case()Ljava/lang/Long;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Landroid/support/v4/hj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cast to number fail. vale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public catch()Landroid/support/v4/dj2;
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/dj2;->for:Z

    .line 2
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/class;->H0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    .line 3
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/class;->H0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/class;->E0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/class;->E0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    return-object p0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/dj2;->if:Z

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/dj2;

    invoke-virtual {p0, p1}, Landroid/support/v4/dj2;->this(Landroid/support/v4/dj2;)I

    move-result p1

    return p1
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public do()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/class;->z(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/util/List;

    const-string v1, ","

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/class;->J(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Landroid/support/v4/dj2;

    .line 3
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    iget-object p1, p1, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Date;

    return v0
.end method

.method public for()Ljava/lang/Double;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Landroid/support/v4/hj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cast to number fail. vale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public goto()Landroid/support/v4/dj2;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/dj2;->if:Z

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public if()Ljava/util/Date;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    const-string v2, "cast to date fail. vale = "

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    sget-object v1, Landroid/support/v4/ax;->for:Lorg/apache/commons/lang3/time/for;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/time/for;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Landroid/support/v4/hj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Landroid/support/v4/hj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public import()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public native()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method public new()Lorg/jsoup/select/Elements;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/select/Elements;

    return-object v0
.end method

.method public public()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public super()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jsoup/select/Elements;

    return v0
.end method

.method public this(Landroid/support/v4/dj2;)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/dj2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_5

    .line 2
    iget-object v0, p1, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/dj2;->native()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/dj2;->import()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1

    .line 8
    :cond_4
    new-instance p1, Landroid/support/v4/hj2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported comparable XValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/dj2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public throw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/dj2;->for:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/t72;

    invoke-direct {v0, p0}, Landroid/support/v4/t72;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    const-string v2, "value"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/t72;->final(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/t72;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v4/dj2;->if:Z

    const-string v2, "isAttr"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/t72;->while(Ljava/lang/String;Z)Landroid/support/v4/t72;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v4/dj2;->for:Z

    const-string v2, "isExprStr"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/t72;->while(Ljava/lang/String;Z)Landroid/support/v4/t72;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/t72;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public while()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj2;->do:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    return v0
.end method
