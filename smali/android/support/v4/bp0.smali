.class public Landroid/support/v4/bp0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private do:Lorg/jsoup/nodes/Element;

.field private for:Ljava/lang/String;

.field private if:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lorg/jsoup/nodes/Element;)Landroid/support/v4/bp0;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/bp0;

    invoke-direct {v0}, Landroid/support/v4/bp0;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/support/v4/bp0;->case(Lorg/jsoup/nodes/Element;)Landroid/support/v4/bp0;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/bp0;->else(Z)Landroid/support/v4/bp0;

    return-object v0
.end method

.method public static this(Ljava/lang/String;)Landroid/support/v4/bp0;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/bp0;

    invoke-direct {v0}, Landroid/support/v4/bp0;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/support/v4/bp0;->goto(Ljava/lang/String;)Landroid/support/v4/bp0;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v4/bp0;->else(Z)Landroid/support/v4/bp0;

    return-object v0
.end method


# virtual methods
.method public case(Lorg/jsoup/nodes/Element;)Landroid/support/v4/bp0;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/bp0;->do:Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public else(Z)Landroid/support/v4/bp0;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/bp0;->if:Z

    return-object p0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/bp0;->for:Ljava/lang/String;

    return-object v0
.end method

.method public goto(Ljava/lang/String;)Landroid/support/v4/bp0;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/bp0;->for:Ljava/lang/String;

    return-object p0
.end method

.method public if()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/bp0;->do:Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/bp0;->if:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/bp0;->if:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/bp0;->for:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/bp0;->do:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/bp0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/jj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/bp0;->do:Lorg/jsoup/nodes/Element;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/zo0;

    new-instance v1, Lorg/jsoup/select/Elements;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jsoup/nodes/Element;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/bp0;->do:Lorg/jsoup/nodes/Element;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lorg/jsoup/select/Elements;-><init>([Lorg/jsoup/nodes/Element;)V

    invoke-direct {v0, v1}, Landroid/support/v4/zo0;-><init>(Lorg/jsoup/select/Elements;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/zo0;->if(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
