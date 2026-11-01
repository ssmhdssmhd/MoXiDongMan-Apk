.class public Landroid/support/v4/vo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/RuleNode;


# static fields
.field public static final for:Landroid/support/v4/qc1;


# instance fields
.field public do:Landroid/support/v4/vo1;

.field public if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/qc1;

    invoke-direct {v0}, Landroid/support/v4/qc1;-><init>()V

    sput-object v0, Landroid/support/v4/vo1;->for:Landroid/support/v4/qc1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/support/v4/vo1;->if:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/vo1;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroid/support/v4/vo1;->if:I

    .line 5
    iput-object p1, p0, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    .line 6
    iput p2, p0, Landroid/support/v4/vo1;->if:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/antlr/v4/runtime/tree/ParseTreeVisitor<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;->visitChildren(Lorg/antlr/v4/runtime/tree/RuleNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final break(Lorg/antlr/v4/runtime/this;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/vo1;->for:Landroid/support/v4/qc1;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/vo1;->catch(Lorg/antlr/v4/runtime/this;Landroid/support/v4/vo1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public case()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/vo1;->if:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public catch(Lorg/antlr/v4/runtime/this;Landroid/support/v4/vo1;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;",
            "Landroid/support/v4/vo1;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->class()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/vo1;->this(Ljava/util/List;Landroid/support/v4/vo1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public class(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/v82;->throw(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public do()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    .line 1
    iget-object v1, v1, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public else(I)V
    .locals 0

    return-void
.end method

.method public for()Landroid/support/v4/vo1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    return-object v0
.end method

.method public getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChild(I)Lorg/antlr/v4/runtime/tree/Tree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/vo1;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/vo1;->for()Landroid/support/v4/vo1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/Tree;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/vo1;->for()Landroid/support/v4/vo1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/vo1;->new()Landroid/support/v4/vo1;

    move-result-object v0

    return-object v0
.end method

.method public getRuleContext()Landroid/support/v4/vo1;
    .locals 0

    return-object p0
.end method

.method public getSourceInterval()Landroid/support/v4/rn0;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/rn0;->new:Landroid/support/v4/rn0;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/vo1;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/vo1;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/support/v4/vo1;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v2

    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final goto(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/vo1;->this(Ljava/util/List;Landroid/support/v4/vo1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public if()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public new()Landroid/support/v4/vo1;
    .locals 0

    return-object p0
.end method

.method public setParent(Landroid/support/v4/vo1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    return-void
.end method

.method public this(Ljava/util/List;Landroid/support/v4/vo1;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/vo1;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, p2, :cond_5

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/support/v4/vo1;->case()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    iget v2, v1, Landroid/support/v4/vo1;->if:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/vo1;->try()I

    move-result v2

    if-ltz v2, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    :goto_2
    iget-object v2, v1, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    invoke-virtual {v2}, Landroid/support/v4/vo1;->case()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, " "

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_4
    iget-object v1, v1, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    goto :goto_0

    :cond_5
    const-string p1, "]"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/support/v4/vo1;->this(Ljava/util/List;Landroid/support/v4/vo1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringTree()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/vo1;->class(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringTree(Lorg/antlr/v4/runtime/goto;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/v82;->while(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/goto;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public try()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
