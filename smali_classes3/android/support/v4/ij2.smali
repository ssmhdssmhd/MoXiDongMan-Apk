.class public Landroid/support/v4/ij2;
.super Lorg/seimicrawler/xpath/antlr/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seimicrawler/xpath/antlr/if<",
        "Landroid/support/v4/dj2;",
        ">;"
    }
.end annotation


# instance fields
.field private do:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/support/v4/es1;",
            ">;"
        }
    .end annotation
.end field

.field private if:Landroid/support/v4/es1;


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Elements;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/seimicrawler/xpath/antlr/if;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/support/v4/ij2;->do:Ljava/util/Stack;

    .line 3
    invoke-static {p1}, Landroid/support/v4/es1;->new(Lorg/jsoup/select/Elements;)Landroid/support/v4/es1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ij2;->if:Landroid/support/v4/es1;

    .line 4
    iget-object v0, p0, Landroid/support/v4/ij2;->do:Ljava/util/Stack;

    invoke-static {p1}, Landroid/support/v4/es1;->new(Lorg/jsoup/select/Elements;)Landroid/support/v4/es1;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v4/ij2;->if:Landroid/support/v4/es1;

    invoke-virtual {p1, v1}, Landroid/support/v4/es1;->break(Landroid/support/v4/es1;)Landroid/support/v4/es1;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private new()Landroid/support/v4/es1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ij2;->do:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/es1;

    return-object v0
.end method

.method private try(Lorg/jsoup/select/Elements;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ij2;->do:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/es1;

    invoke-virtual {v0, p1}, Landroid/support/v4/es1;->this(Lorg/jsoup/select/Elements;)V

    return-void
.end method


# virtual methods
.method public abstract(Lorg/seimicrawler/xpath/antlr/for$default;)Landroid/support/v4/dj2;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$default;->volatile()Lorg/seimicrawler/xpath/antlr/for$extends;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    .line 2
    iget-object p1, p1, Lorg/seimicrawler/xpath/antlr/for$default;->goto:Lorg/antlr/v4/runtime/Token;

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public break(Lorg/seimicrawler/xpath/antlr/for$try;)Landroid/support/v4/dj2;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$try;->strictfp()Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$try;->strictfp()Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/ParseTree;->getText()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/support/v4/as1;->for(Ljava/lang/String;)Lorg/seimicrawler/xpath/core/AxisSelector;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/es1;->do()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/seimicrawler/xpath/core/AxisSelector;->apply(Lorg/jsoup/select/Elements;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/vo1;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "@"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7
    invoke-static {v0}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/dj2;->goto()Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public case(Lorg/seimicrawler/xpath/antlr/for$do;)Landroid/support/v4/dj2;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/vo1;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 4
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/es1;->do()Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 5
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-static {v0}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/es1;->do()Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public catch(Lorg/seimicrawler/xpath/antlr/for$case;)Landroid/support/v4/dj2;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$case;->transient()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, v1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dj2;

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, v0}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    .line 7
    iget-object p1, p1, Lorg/seimicrawler/xpath/antlr/for$case;->goto:Lorg/antlr/v4/runtime/Token;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v2, "="

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v1}, Landroid/support/v4/dj2;->public()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/dj2;->public()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/dj2;->public()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/dj2;->public()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    new-instance v0, Landroid/support/v4/hj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error equalityExpr near:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/vo1;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public class(Lorg/seimicrawler/xpath/antlr/for$else;)Landroid/support/v4/dj2;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$else;->strictfp()Lorg/seimicrawler/xpath/antlr/for$while;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1
.end method

.method public const(Lorg/seimicrawler/xpath/antlr/for$goto;)Landroid/support/v4/dj2;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$goto;->interface()Lorg/seimicrawler/xpath/antlr/for$public;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1
.end method

.method public continue(Lorg/seimicrawler/xpath/antlr/for$extends;)Landroid/support/v4/dj2;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$extends;->interface()Lorg/seimicrawler/xpath/antlr/for$import;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$extends;->interface()Lorg/seimicrawler/xpath/antlr/for$import;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/vo1;->case()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$extends;->protected()Lorg/seimicrawler/xpath/antlr/for$extends;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$extends;->interface()Lorg/seimicrawler/xpath/antlr/for$import;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    .line 4
    iget-object v1, p1, Lorg/seimicrawler/xpath/antlr/for$extends;->goto:Lorg/antlr/v4/runtime/Token;

    if-nez v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/support/v4/ij2;->do:Ljava/util/Stack;

    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/es1;->try()Landroid/support/v4/es1;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/es1;->if(Landroid/support/v4/es1;)Landroid/support/v4/es1;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$extends;->protected()Lorg/seimicrawler/xpath/antlr/for$extends;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    .line 7
    iget-object v1, p0, Landroid/support/v4/ij2;->do:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Landroid/support/v4/dj2;->super()Z

    move-result v1

    const-string v2, "V"

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/support/v4/dj2;->super()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/support/v4/dj2;->new()Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/dj2;->new()Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Lorg/jsoup/nodes/Element;

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Element;->appendText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 13
    invoke-virtual {v0}, Landroid/support/v4/dj2;->new()Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    .line 14
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/dj2;->native()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {p1}, Landroid/support/v4/dj2;->super()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    new-instance v1, Lorg/jsoup/nodes/Element;

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->appendText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 18
    invoke-virtual {p1}, Landroid/support/v4/dj2;->new()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 19
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 20
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/dj2;->const()Z

    move-result v1

    const-string v3, ",val2="

    const-string v4, "can not merge val1="

    if-eqz v1, :cond_9

    .line 21
    invoke-virtual {p1}, Landroid/support/v4/dj2;->const()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {v0}, Landroid/support/v4/dj2;->do()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/dj2;->do()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    or-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/dj2;->super()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    new-instance v1, Lorg/jsoup/nodes/Element;

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->appendText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 26
    invoke-virtual {p1}, Landroid/support/v4/dj2;->new()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 27
    :cond_7
    invoke-virtual {p1}, Landroid/support/v4/dj2;->native()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/dj2;->do()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 29
    :cond_8
    new-instance v1, Landroid/support/v4/gj2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/v4/dj2;->do()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/support/v4/gj2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_9
    invoke-virtual {v0}, Landroid/support/v4/dj2;->import()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 31
    invoke-virtual {p1}, Landroid/support/v4/dj2;->native()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 33
    :cond_a
    invoke-virtual {p1}, Landroid/support/v4/dj2;->super()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 34
    new-instance v1, Lorg/jsoup/nodes/Element;

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->appendText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 36
    invoke-virtual {p1}, Landroid/support/v4/dj2;->new()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 37
    :cond_b
    new-instance v1, Landroid/support/v4/gj2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/support/v4/gj2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_c
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 39
    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/class;->D(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 40
    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_d
    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/class;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 42
    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string p1, ","

    .line 43
    invoke-static {v1, p1}, Lorg/apache/commons/lang3/class;->J(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public default(Lorg/seimicrawler/xpath/antlr/for$public;)Landroid/support/v4/dj2;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$public;->interface()Lorg/seimicrawler/xpath/antlr/for$else;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$public;->interface()Lorg/seimicrawler/xpath/antlr/for$else;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/vo1;->case()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$public;->interface()Lorg/seimicrawler/xpath/antlr/for$else;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$public;->protected()Lorg/seimicrawler/xpath/antlr/for$this;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$public;->protected()Lorg/seimicrawler/xpath/antlr/for$this;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/vo1;->case()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$public;->protected()Lorg/seimicrawler/xpath/antlr/for$this;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$public;->strictfp()Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$public;->strictfp()Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/ParseTree;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/dj2;->catch()Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$public;->volatile()Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$public;->volatile()Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/ParseTree;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/f51;->for(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    new-instance v0, Landroid/support/v4/hj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support variableReference:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/vo1;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public else(Lorg/seimicrawler/xpath/antlr/for$if;)Landroid/support/v4/dj2;
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/seimicrawler/xpath/antlr/for$if;->goto:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/es1;->goto()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$if;->interface()Lorg/seimicrawler/xpath/antlr/for$switch;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1
.end method

.method public extends(Lorg/seimicrawler/xpath/antlr/for$return;)Landroid/support/v4/dj2;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$return;->strictfp()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/seimicrawler/xpath/antlr/for$final;

    .line 5
    invoke-virtual {p0, v1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dj2;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, ":"

    .line 7
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/class;->J(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final(Lorg/seimicrawler/xpath/antlr/for$this;)Landroid/support/v4/dj2;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$this;->interface()Lorg/seimicrawler/xpath/antlr/for$break;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dj2;

    .line 3
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$this;->strictfp()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/seimicrawler/xpath/antlr/for$else;

    .line 4
    iget-object v3, p0, Landroid/support/v4/ij2;->do:Ljava/util/Stack;

    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/es1;->if(Landroid/support/v4/es1;)Landroid/support/v4/es1;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v2}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v2, p0, Landroid/support/v4/ij2;->do:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/as1;->do(Ljava/lang/String;)Lorg/seimicrawler/xpath/core/Function;

    move-result-object p1

    .line 8
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lorg/seimicrawler/xpath/core/Function;->call(Landroid/support/v4/es1;Ljava/util/List;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public finally(Lorg/seimicrawler/xpath/antlr/for$static;)Landroid/support/v4/dj2;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$static;->i()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, v1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dj2;

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, v0}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    .line 7
    iget-object v4, p1, Lorg/seimicrawler/xpath/antlr/for$static;->goto:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v4}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 8
    :pswitch_0
    new-instance v0, Landroid/support/v4/hj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown operator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/seimicrawler/xpath/antlr/for$static;->goto:Lorg/antlr/v4/runtime/Token;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :pswitch_1
    invoke-virtual {v1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_2
    invoke-virtual {v1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_3
    invoke-virtual {v1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_4
    invoke-virtual {v1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    invoke-virtual {v1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_6
    invoke-virtual {v1, v0}, Landroid/support/v4/dj2;->this(Landroid/support/v4/dj2;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_7
    invoke-virtual {v1, v0}, Landroid/support/v4/dj2;->this(Landroid/support/v4/dj2;)I

    move-result p1

    if-gtz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_8
    invoke-virtual {v1, v0}, Landroid/support/v4/dj2;->this(Landroid/support/v4/dj2;)I

    move-result p1

    if-lez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_9
    invoke-virtual {v1, v0}, Landroid/support/v4/dj2;->this(Landroid/support/v4/dj2;)I

    move-result p1

    if-gez p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 18
    :cond_5
    new-instance v0, Landroid/support/v4/hj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error equalityExpr near:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/vo1;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public goto(Lorg/seimicrawler/xpath/antlr/for$for;)Landroid/support/v4/dj2;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$for;->transient()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, v0}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    invoke-virtual {v0}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/qc1;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 6
    invoke-virtual {p1, v3}, Landroid/support/v4/qc1;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v2

    .line 7
    instance-of v4, v2, Lorg/seimicrawler/xpath/antlr/for$const;

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {p0, v2}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/dj2;

    const-string v4, "+"

    .line 9
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v4, "-"

    .line 11
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_2
    new-instance v0, Landroid/support/v4/hj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/vo1;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {v0}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public import(Lorg/seimicrawler/xpath/antlr/for$const;)Landroid/support/v4/dj2;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$const;->protected()Lorg/seimicrawler/xpath/antlr/for$const;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$const;->protected()Lorg/seimicrawler/xpath/antlr/for$const;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/vo1;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$const;->transient()Lorg/seimicrawler/xpath/antlr/for$default;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    .line 3
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$const;->protected()Lorg/seimicrawler/xpath/antlr/for$const;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dj2;

    .line 4
    iget-object v2, p1, Lorg/seimicrawler/xpath/antlr/for$const;->goto:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5
    new-instance v0, Landroid/support/v4/hj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/vo1;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :pswitch_0
    invoke-virtual {v0}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    rem-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_1
    invoke-virtual {v0}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_2
    invoke-virtual {v0}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/support/v4/dj2;->for()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$const;->transient()Lorg/seimicrawler/xpath/antlr/for$default;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public native(Lorg/seimicrawler/xpath/antlr/for$final;)Landroid/support/v4/dj2;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$final;->strictfp()Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$final;->strictfp()Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/ParseTree;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/dj2;->catch()Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$final;->volatile()Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/ParseTree;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/dj2;->catch()Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public package(Lorg/seimicrawler/xpath/antlr/for$switch;)Landroid/support/v4/dj2;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/qc1;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    invoke-virtual {p1, v1}, Landroid/support/v4/qc1;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lorg/seimicrawler/xpath/antlr/for$throws;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/dj2;->super()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/dj2;->new()Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v4/ij2;->try(Lorg/jsoup/select/Elements;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "//"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/es1;->goto()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/es1;->else()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public private(Lorg/seimicrawler/xpath/antlr/for$throws;)Landroid/support/v4/dj2;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->strictfp()Lorg/seimicrawler/xpath/antlr/for$do;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->strictfp()Lorg/seimicrawler/xpath/antlr/for$do;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/vo1;->case()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->strictfp()Lorg/seimicrawler/xpath/antlr/for$do;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->volatile()Lorg/seimicrawler/xpath/antlr/for$try;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->volatile()Lorg/seimicrawler/xpath/antlr/for$try;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/vo1;->case()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->volatile()Lorg/seimicrawler/xpath/antlr/for$try;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/dj2;->super()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/dj2;->new()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/ij2;->try(Lorg/jsoup/select/Elements;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/dj2;->class()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 8
    :goto_1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->interface()Lorg/seimicrawler/xpath/antlr/for$throw;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->interface()Lorg/seimicrawler/xpath/antlr/for$throw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/vo1;->case()Z

    move-result v3

    if-nez v3, :cond_14

    .line 9
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->interface()Lorg/seimicrawler/xpath/antlr/for$throw;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/dj2;

    if-eqz v1, :cond_b

    .line 10
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/es1;->do()Lorg/jsoup/select/Elements;

    move-result-object p1

    .line 11
    invoke-virtual {v3}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/es1;->case()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "]"

    const-string v4, "["

    if-ne v1, v2, :cond_5

    .line 14
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/es1;->catch()Lorg/jsoup/nodes/Element;

    move-result-object p1

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    .line 16
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 18
    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {v1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 20
    :cond_5
    new-instance v1, Lorg/jsoup/select/Elements;

    invoke-direct {v1}, Lorg/jsoup/select/Elements;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 23
    :cond_6
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 25
    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 26
    :cond_7
    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 27
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 28
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/es1;->catch()Lorg/jsoup/nodes/Element;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 30
    :cond_9
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 32
    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 33
    :cond_a
    invoke-static {v1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 34
    :cond_b
    invoke-virtual {v3}, Landroid/support/v4/dj2;->throw()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 35
    invoke-virtual {v3}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/es1;->do()Lorg/jsoup/select/Elements;

    move-result-object v2

    .line 37
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/es1;->case()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 38
    invoke-virtual {v2, v1}, Lorg/jsoup/select/Elements;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/ij2;->try(Lorg/jsoup/select/Elements;)V

    goto :goto_8

    .line 39
    :cond_c
    new-instance v2, Lorg/jsoup/select/Elements;

    invoke-direct {v2}, Lorg/jsoup/select/Elements;-><init>()V

    .line 40
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/es1;->do()Lorg/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    const-string v5, "*"

    if-eqz v0, :cond_f

    .line 41
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 42
    :cond_e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 43
    :cond_f
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 44
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 45
    :cond_11
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 46
    :cond_12
    invoke-direct {p0, v2}, Landroid/support/v4/ij2;->try(Lorg/jsoup/select/Elements;)V

    goto :goto_8

    :cond_13
    return-object v3

    .line 47
    :cond_14
    :goto_8
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->protected()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->protected()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 48
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throws;->protected()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seimicrawler/xpath/antlr/for$native;

    .line 49
    invoke-virtual {p0, v0}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    .line 50
    invoke-virtual {v0}, Landroid/support/v4/dj2;->new()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/ij2;->try(Lorg/jsoup/select/Elements;)V

    goto :goto_9

    .line 51
    :cond_15
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/es1;->do()Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public public(Lorg/seimicrawler/xpath/antlr/for$super;)Landroid/support/v4/dj2;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/vo1;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/dj2;->catch()Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$super;->volatile()Lorg/seimicrawler/xpath/antlr/for$return;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$super;->volatile()Lorg/seimicrawler/xpath/antlr/for$return;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/vo1;->case()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$super;->volatile()Lorg/seimicrawler/xpath/antlr/for$return;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$super;->strictfp()Lorg/seimicrawler/xpath/antlr/for$final;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$super;->strictfp()Lorg/seimicrawler/xpath/antlr/for$final;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/vo1;->case()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$super;->strictfp()Lorg/seimicrawler/xpath/antlr/for$final;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public return(Lorg/seimicrawler/xpath/antlr/for$throw;)Landroid/support/v4/dj2;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throw;->interface()Lorg/seimicrawler/xpath/antlr/for$super;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throw;->interface()Lorg/seimicrawler/xpath/antlr/for$super;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throw;->volatile()Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$throw;->volatile()Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/ParseTree;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/as1;->if(Ljava/lang/String;)Lorg/seimicrawler/xpath/core/NodeTest;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/seimicrawler/xpath/core/NodeTest;->call(Landroid/support/v4/es1;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static(Lorg/seimicrawler/xpath/antlr/for$while;)Landroid/support/v4/dj2;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$while;->strictfp()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, v0}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    invoke-virtual {v0}, Landroid/support/v4/dj2;->do()Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, v1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dj2;

    invoke-virtual {v1}, Landroid/support/v4/dj2;->do()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1
.end method

.method public super(Lorg/seimicrawler/xpath/antlr/for$break;)Landroid/support/v4/dj2;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$break;->strictfp()Lorg/seimicrawler/xpath/antlr/for$return;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1
.end method

.method public switch(Lorg/seimicrawler/xpath/antlr/for$import;)Landroid/support/v4/dj2;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$import;->protected()Lorg/seimicrawler/xpath/antlr/for$catch;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$import;->protected()Lorg/seimicrawler/xpath/antlr/for$catch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/vo1;->case()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$import;->protected()Lorg/seimicrawler/xpath/antlr/for$catch;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lorg/seimicrawler/xpath/antlr/for$import;->goto:Lorg/antlr/v4/runtime/Token;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$import;->interface()Lorg/seimicrawler/xpath/antlr/for$goto;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 5
    :cond_1
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/es1;->goto()V

    .line 7
    :cond_2
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$import;->transient()Lorg/seimicrawler/xpath/antlr/for$switch;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1
.end method

.method public this(Lorg/seimicrawler/xpath/antlr/for$new;)Landroid/support/v4/dj2;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$new;->strictfp()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, v0}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    invoke-virtual {v0}, Landroid/support/v4/dj2;->do()Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, v1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dj2;

    invoke-virtual {v1}, Landroid/support/v4/dj2;->do()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1
.end method

.method public throw(Lorg/seimicrawler/xpath/antlr/for$catch;)Landroid/support/v4/dj2;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$catch;->volatile()Lorg/seimicrawler/xpath/antlr/for$switch;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$catch;->volatile()Lorg/seimicrawler/xpath/antlr/for$switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/vo1;->case()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$catch;->volatile()Lorg/seimicrawler/xpath/antlr/for$switch;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$catch;->strictfp()Lorg/seimicrawler/xpath/antlr/for$if;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1
.end method

.method public throws(Lorg/seimicrawler/xpath/antlr/for$native;)Landroid/support/v4/dj2;
    .locals 8

    .line 1
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 2
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/es1;->do()Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 3
    iget-object v3, p0, Landroid/support/v4/ij2;->do:Ljava/util/Stack;

    invoke-static {v2}, Landroid/support/v4/es1;->for(Lorg/jsoup/nodes/Element;)Landroid/support/v4/es1;

    move-result-object v4

    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/es1;->break(Landroid/support/v4/es1;)Landroid/support/v4/es1;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$native;->strictfp()Lorg/seimicrawler/xpath/antlr/for$else;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/dj2;

    .line 5
    iget-object v4, p0, Landroid/support/v4/ij2;->do:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 6
    invoke-virtual {v3}, Landroid/support/v4/dj2;->import()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v3}, Landroid/support/v4/dj2;->case()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 8
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/support/v4/ip;->try(Lorg/jsoup/nodes/Element;Landroid/support/v4/es1;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v3

    const-wide/16 v3, 0x1

    add-long/2addr v3, v5

    .line 9
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/ij2;->new()Landroid/support/v4/es1;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/support/v4/ip;->if(Lorg/jsoup/nodes/Element;Landroid/support/v4/es1;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v3}, Landroid/support/v4/dj2;->const()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v3}, Landroid/support/v4/dj2;->do()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/dj2;->native()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {v3}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/class;->D(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/dj2;->super()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    invoke-virtual {v3}, Landroid/support/v4/dj2;->new()Lorg/jsoup/select/Elements;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 21
    :cond_5
    invoke-virtual {v3}, Landroid/support/v4/dj2;->while()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 22
    invoke-virtual {v3}, Landroid/support/v4/dj2;->try()Ljava/util/List;

    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 25
    :cond_6
    new-instance p1, Landroid/support/v4/hj2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown expr val:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_7
    invoke-static {v0}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAbbreviatedStep(Lorg/seimicrawler/xpath/antlr/for$do;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->case(Lorg/seimicrawler/xpath/antlr/for$do;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAbsoluteLocationPathNoroot(Lorg/seimicrawler/xpath/antlr/for$if;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->else(Lorg/seimicrawler/xpath/antlr/for$if;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAdditiveExpr(Lorg/seimicrawler/xpath/antlr/for$for;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->goto(Lorg/seimicrawler/xpath/antlr/for$for;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAndExpr(Lorg/seimicrawler/xpath/antlr/for$new;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->this(Lorg/seimicrawler/xpath/antlr/for$new;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAxisSpecifier(Lorg/seimicrawler/xpath/antlr/for$try;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->break(Lorg/seimicrawler/xpath/antlr/for$try;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitEqualityExpr(Lorg/seimicrawler/xpath/antlr/for$case;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->catch(Lorg/seimicrawler/xpath/antlr/for$case;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitExpr(Lorg/seimicrawler/xpath/antlr/for$else;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->class(Lorg/seimicrawler/xpath/antlr/for$else;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitFilterExpr(Lorg/seimicrawler/xpath/antlr/for$goto;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->const(Lorg/seimicrawler/xpath/antlr/for$goto;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitFunctionCall(Lorg/seimicrawler/xpath/antlr/for$this;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->final(Lorg/seimicrawler/xpath/antlr/for$this;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitFunctionName(Lorg/seimicrawler/xpath/antlr/for$break;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->super(Lorg/seimicrawler/xpath/antlr/for$break;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitLocationPath(Lorg/seimicrawler/xpath/antlr/for$catch;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->throw(Lorg/seimicrawler/xpath/antlr/for$catch;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitMain(Lorg/seimicrawler/xpath/antlr/for$class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->while(Lorg/seimicrawler/xpath/antlr/for$class;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitMultiplicativeExpr(Lorg/seimicrawler/xpath/antlr/for$const;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->import(Lorg/seimicrawler/xpath/antlr/for$const;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitNCName(Lorg/seimicrawler/xpath/antlr/for$final;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->native(Lorg/seimicrawler/xpath/antlr/for$final;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitNameTest(Lorg/seimicrawler/xpath/antlr/for$super;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->public(Lorg/seimicrawler/xpath/antlr/for$super;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitNodeTest(Lorg/seimicrawler/xpath/antlr/for$throw;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->return(Lorg/seimicrawler/xpath/antlr/for$throw;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitOrExpr(Lorg/seimicrawler/xpath/antlr/for$while;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->static(Lorg/seimicrawler/xpath/antlr/for$while;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitPathExprNoRoot(Lorg/seimicrawler/xpath/antlr/for$import;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->switch(Lorg/seimicrawler/xpath/antlr/for$import;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitPredicate(Lorg/seimicrawler/xpath/antlr/for$native;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->throws(Lorg/seimicrawler/xpath/antlr/for$native;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitPrimaryExpr(Lorg/seimicrawler/xpath/antlr/for$public;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->default(Lorg/seimicrawler/xpath/antlr/for$public;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitQName(Lorg/seimicrawler/xpath/antlr/for$return;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->extends(Lorg/seimicrawler/xpath/antlr/for$return;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitRelationalExpr(Lorg/seimicrawler/xpath/antlr/for$static;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->finally(Lorg/seimicrawler/xpath/antlr/for$static;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitRelativeLocationPath(Lorg/seimicrawler/xpath/antlr/for$switch;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->package(Lorg/seimicrawler/xpath/antlr/for$switch;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitStep(Lorg/seimicrawler/xpath/antlr/for$throws;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->private(Lorg/seimicrawler/xpath/antlr/for$throws;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitUnaryExprNoRoot(Lorg/seimicrawler/xpath/antlr/for$default;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->abstract(Lorg/seimicrawler/xpath/antlr/for$default;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitUnionExprNoRoot(Lorg/seimicrawler/xpath/antlr/for$extends;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ij2;->continue(Lorg/seimicrawler/xpath/antlr/for$extends;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public while(Lorg/seimicrawler/xpath/antlr/for$class;)Landroid/support/v4/dj2;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/seimicrawler/xpath/antlr/for$class;->strictfp()Lorg/seimicrawler/xpath/antlr/for$else;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/c;->visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    return-object p1
.end method
