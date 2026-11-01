.class public Landroid/support/v4/zo0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private do:Landroid/support/v4/yo0;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/support/v4/yo0;->do(Ljava/lang/String;)Landroid/support/v4/yo0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/zo0;->do:Landroid/support/v4/yo0;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Document;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/yo0;->if(Lorg/jsoup/nodes/Document;)Landroid/support/v4/yo0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/zo0;->do:Landroid/support/v4/yo0;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/select/Elements;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Landroid/support/v4/yo0;->for(Lorg/jsoup/select/Elements;)Landroid/support/v4/yo0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/zo0;->do:Landroid/support/v4/yo0;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/jj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/zo0;->do:Landroid/support/v4/yo0;

    invoke-virtual {v0, p1}, Landroid/support/v4/yo0;->try(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public for(Ljava/lang/String;)Landroid/support/v4/bp0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/jj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/zo0;->if(Ljava/lang/String;)Ljava/util/List;

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

    check-cast p1, Landroid/support/v4/bp0;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public if(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v4/zo0;->do:Landroid/support/v4/yo0;

    invoke-virtual {v1, p1}, Landroid/support/v4/yo0;->case(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ap0;

    .line 4
    invoke-virtual {v1}, Landroid/support/v4/ap0;->catch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/support/v4/ap0;->try()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/bp0;->this(Ljava/lang/String;)Landroid/support/v4/bp0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/ap0;->new()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/bp0;->do(Lorg/jsoup/nodes/Element;)Landroid/support/v4/bp0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public new(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/jj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/zo0;->for(Ljava/lang/String;)Landroid/support/v4/bp0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/bp0;->new()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/bp0;->for()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/bp0;->if()Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
