.class public Landroid/support/v4/yo0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lorg/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Elements;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/yo0;->do:Lorg/jsoup/select/Elements;

    return-void
.end method

.method public static do(Ljava/lang/String;)Landroid/support/v4/yo0;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/support/v4/yo0;

    invoke-direct {v0, p0}, Landroid/support/v4/yo0;-><init>(Lorg/jsoup/select/Elements;)V

    return-object v0
.end method

.method public static for(Lorg/jsoup/select/Elements;)Landroid/support/v4/yo0;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/yo0;

    invoke-direct {v0, p0}, Landroid/support/v4/yo0;-><init>(Lorg/jsoup/select/Elements;)V

    return-object v0
.end method

.method public static if(Lorg/jsoup/nodes/Document;)Landroid/support/v4/yo0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/support/v4/yo0;

    invoke-direct {v0, p0}, Landroid/support/v4/yo0;-><init>(Lorg/jsoup/select/Elements;)V

    return-object v0
.end method

.method public static new(Ljava/lang/String;)Landroid/support/v4/yo0;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object p0

    invoke-interface {p0}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v0, Landroid/support/v4/yo0;

    invoke-direct {v0, p0}, Landroid/support/v4/yo0;-><init>(Lorg/jsoup/select/Elements;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Landroid/support/v4/hj2;

    const-string v1, "url\u8d44\u6e90\u83b7\u53d6\u5931\u8d25"

    invoke-direct {v0, v1, p0}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public case(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Lorg/antlr/v4/runtime/new;->final(Ljava/lang/String;)Lorg/antlr/v4/runtime/case;

    move-result-object p1

    .line 3
    new-instance v1, Landroid/support/v4/fj2;

    invoke-direct {v1, p1}, Landroid/support/v4/fj2;-><init>(Lorg/antlr/v4/runtime/CharStream;)V

    .line 4
    new-instance p1, Landroid/support/v4/hp;

    invoke-direct {p1, v1}, Landroid/support/v4/hp;-><init>(Lorg/antlr/v4/runtime/TokenSource;)V

    .line 5
    new-instance v1, Lorg/seimicrawler/xpath/antlr/for;

    invoke-direct {v1, p1}, Lorg/seimicrawler/xpath/antlr/for;-><init>(Lorg/antlr/v4/runtime/TokenStream;)V

    .line 6
    new-instance p1, Landroid/support/v4/s10;

    invoke-direct {p1}, Landroid/support/v4/s10;-><init>()V

    invoke-virtual {v1, p1}, Lorg/antlr/v4/runtime/goto;->H(Lorg/antlr/v4/runtime/ANTLRErrorStrategy;)V

    .line 7
    invoke-virtual {v1}, Lorg/seimicrawler/xpath/antlr/for;->a0()Lorg/seimicrawler/xpath/antlr/for$class;

    move-result-object p1

    .line 8
    new-instance v1, Landroid/support/v4/ij2;

    iget-object v2, p0, Landroid/support/v4/yo0;->do:Lorg/jsoup/select/Elements;

    invoke-direct {v1, v2}, Landroid/support/v4/ij2;-><init>(Lorg/jsoup/select/Elements;)V

    .line 9
    invoke-virtual {v1, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    .line 10
    invoke-virtual {p1}, Landroid/support/v4/dj2;->super()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/support/v4/dj2;->new()Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 12
    invoke-static {v1}, Landroid/support/v4/ap0;->case(Ljava/lang/Object;)Landroid/support/v4/ap0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/dj2;->while()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p1}, Landroid/support/v4/dj2;->try()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    invoke-static {v1}, Landroid/support/v4/ap0;->case(Ljava/lang/Object;)Landroid/support/v4/ap0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    .line 16
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/dj2;->native()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/ap0;->case(Ljava/lang/Object;)Landroid/support/v4/ap0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/dj2;->import()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {p1}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/ap0;->case(Ljava/lang/Object;)Landroid/support/v4/ap0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 20
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/dj2;->const()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {p1}, Landroid/support/v4/dj2;->do()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/ap0;->case(Ljava/lang/Object;)Landroid/support/v4/ap0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 22
    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/dj2;->final()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {p1}, Landroid/support/v4/dj2;->if()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/ap0;->case(Ljava/lang/Object;)Landroid/support/v4/ap0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 24
    :cond_7
    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/ap0;->case(Ljava/lang/Object;)Landroid/support/v4/ap0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Landroid/support/v4/jj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please check the syntax of your xpath expr or commit a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/support/v4/r80;->else(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/jj2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public else(Ljava/lang/String;)Landroid/support/v4/ap0;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/yo0;->case(Ljava/lang/String;)Ljava/util/List;

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

.method public goto(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/yo0;->else(Ljava/lang/String;)Landroid/support/v4/ap0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/ap0;->this()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/ap0;->new()Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/ap0;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public try(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/yo0;->case(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ap0;

    .line 3
    invoke-virtual {v1}, Landroid/support/v4/ap0;->this()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/support/v4/ap0;->new()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/ap0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
