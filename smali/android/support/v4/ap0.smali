.class public Landroid/support/v4/ap0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/ap0;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/ap0;

    invoke-direct {v0, p0}, Landroid/support/v4/ap0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public break()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method public class(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/ap0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ap0;->this()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/yo0;

    new-instance v1, Lorg/jsoup/select/Elements;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jsoup/nodes/Element;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v4/ap0;->new()Lorg/jsoup/nodes/Element;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lorg/jsoup/select/Elements;-><init>([Lorg/jsoup/nodes/Element;)V

    invoke-direct {v0, v1}, Landroid/support/v4/yo0;-><init>(Lorg/jsoup/select/Elements;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/yo0;->case(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public const(Ljava/lang/String;)Landroid/support/v4/ap0;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ap0;->class(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/ap0;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public do()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public else()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public final()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ap0;->this()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/ap0;->new()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/ap0;->else()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/ap0;->do()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/ap0;->break()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/ap0;->for()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/ap0;->goto()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/ap0;->if()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/ap0;->try()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public for()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public goto()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Date;

    return v0
.end method

.method public if()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public new()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public this()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ap0;->this()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/ap0;->new()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ap0;->do:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
