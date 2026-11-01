.class Lfreemarker/template/utility/new$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private do:Lorg/w3c/dom/NodeList;

.field public final synthetic for:Lfreemarker/template/utility/new;

.field private if:[Lfreemarker/template/TemplateModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/utility/new;Lorg/w3c/dom/NodeList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/utility/new$if;->for:Lfreemarker/template/utility/new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/template/utility/new$if;->do:Lorg/w3c/dom/NodeList;

    .line 3
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    new-array p1, p1, [Lfreemarker/template/TemplateModel;

    iput-object p1, p0, Lfreemarker/template/utility/new$if;->if:[Lfreemarker/template/TemplateModel;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lfreemarker/template/utility/new$if;->for:Lfreemarker/template/utility/new;

    invoke-static {v0}, Lfreemarker/template/utility/new;->do(Lfreemarker/template/utility/new;)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/template/utility/new$if;->for:Lfreemarker/template/utility/new;

    invoke-static {v0}, Lfreemarker/template/utility/new;->do(Lfreemarker/template/utility/new;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 4
    new-instance v1, Lfreemarker/template/utility/new$if;

    iget-object v2, p0, Lfreemarker/template/utility/new$if;->for:Lfreemarker/template/utility/new;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lfreemarker/template/utility/new$if;-><init>(Lfreemarker/template/utility/new;Lorg/w3c/dom/NodeList;)V

    return-object v1

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/k52;

    const-string v0, "Expecting element here."

    invoke-direct {p1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Landroid/support/v4/k52;

    const-string v0, "Expecting exactly one string argument here"

    invoke-direct {p1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/new$if;->if:[Lfreemarker/template/TemplateModel;

    aget-object v0, v0, p1

    check-cast v0, Lfreemarker/template/utility/new;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/template/utility/new;

    iget-object v1, p0, Lfreemarker/template/utility/new$if;->do:Lorg/w3c/dom/NodeList;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/utility/new;-><init>(Lorg/w3c/dom/Node;)V

    .line 3
    iget-object v1, p0, Lfreemarker/template/utility/new$if;->if:[Lfreemarker/template/TemplateModel;

    aput-object v0, v1, p1

    .line 4
    iget-object p1, p0, Lfreemarker/template/utility/new$if;->for:Lfreemarker/template/utility/new;

    invoke-virtual {v0, p1}, Lfreemarker/template/utility/new;->else(Lfreemarker/template/utility/new;)V

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/new$if;->if:[Lfreemarker/template/TemplateModel;

    array-length v0, v0

    return v0
.end method
