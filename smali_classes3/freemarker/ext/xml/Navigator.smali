.class abstract Lfreemarker/ext/xml/Navigator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/xml/Navigator$while;,
        Lfreemarker/ext/xml/Navigator$const;,
        Lfreemarker/ext/xml/Navigator$class;,
        Lfreemarker/ext/xml/Navigator$super;,
        Lfreemarker/ext/xml/Navigator$catch;,
        Lfreemarker/ext/xml/Navigator$throw;,
        Lfreemarker/ext/xml/Navigator$case;,
        Lfreemarker/ext/xml/Navigator$break;,
        Lfreemarker/ext/xml/Navigator$this;,
        Lfreemarker/ext/xml/Navigator$final;,
        Lfreemarker/ext/xml/Navigator$if;,
        Lfreemarker/ext/xml/Navigator$for;,
        Lfreemarker/ext/xml/Navigator$else;,
        Lfreemarker/ext/xml/Navigator$goto;,
        Lfreemarker/ext/xml/Navigator$new;,
        Lfreemarker/ext/xml/Navigator$try;,
        Lfreemarker/ext/xml/Navigator$XPathEx;
    }
.end annotation


# instance fields
.field private final do:Ljava/util/Map;

.field private final for:Lfreemarker/ext/xml/NodeOperator;

.field private final if:Ljava/util/Map;

.field private final new:Lfreemarker/ext/xml/NodeOperator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/xml/Navigator;->do:Ljava/util/Map;

    .line 3
    invoke-direct {p0}, Lfreemarker/ext/xml/Navigator;->for()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/xml/Navigator;->if:Ljava/util/Map;

    const-string v0, "_attributes"

    .line 4
    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/Navigator;->native(Ljava/lang/String;)Lfreemarker/ext/xml/NodeOperator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/xml/Navigator;->for:Lfreemarker/ext/xml/NodeOperator;

    const-string v0, "_children"

    .line 5
    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/Navigator;->native(Ljava/lang/String;)Lfreemarker/ext/xml/NodeOperator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/xml/Navigator;->new:Lfreemarker/ext/xml/NodeOperator;

    return-void
.end method

.method private case(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/Navigator;->public(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static synthetic do(Lfreemarker/ext/xml/Navigator;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/xml/Navigator;->case(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method private for()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Lfreemarker/ext/xml/Navigator$new;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$new;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_attributes"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "@*"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lfreemarker/ext/xml/Navigator$try;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$try;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_children"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "*"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lfreemarker/ext/xml/Navigator$goto;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$goto;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_descendantOrSelf"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lfreemarker/ext/xml/Navigator$else;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$else;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_descendant"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lfreemarker/ext/xml/Navigator$this;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$this;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_document"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lfreemarker/ext/xml/Navigator$break;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$break;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_doctype"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lfreemarker/ext/xml/Navigator$if;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$if;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_ancestor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lfreemarker/ext/xml/Navigator$for;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$for;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_ancestorOrSelf"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Lfreemarker/ext/xml/Navigator$case;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$case;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_content"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lfreemarker/ext/xml/Navigator$catch;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$catch;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_name"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lfreemarker/ext/xml/Navigator$class;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$class;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_nsprefix"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Lfreemarker/ext/xml/Navigator$const;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$const;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_nsuri"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, Lfreemarker/ext/xml/Navigator$final;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$final;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_parent"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Lfreemarker/ext/xml/Navigator$super;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$super;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_qname"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, Lfreemarker/ext/xml/Navigator$throw;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$throw;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v3, "_text"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v1, Lfreemarker/ext/xml/Navigator$while;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$while;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$do;)V

    const-string v2, "_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public abstract break(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end method

.method public catch()Lfreemarker/ext/xml/NodeOperator;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/xml/Navigator;->new:Lfreemarker/ext/xml/NodeOperator;

    return-object v0
.end method

.method public abstract class(Ljava/lang/Object;Ljava/util/List;)V
.end method

.method public abstract const(Ljava/lang/Object;Ljava/util/List;)V
.end method

.method public abstract else(Ljava/lang/Object;Ljava/io/StringWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation
.end method

.method public abstract final(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public goto()Lfreemarker/ext/xml/NodeOperator;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/xml/Navigator;->for:Lfreemarker/ext/xml/NodeOperator;

    return-object v0
.end method

.method public if(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/xml/Navigator;->do:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lfreemarker/ext/xml/Navigator;->do:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/xml/Navigator$XPathEx;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lfreemarker/ext/xml/Navigator;->new(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator$XPathEx;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lfreemarker/ext/xml/Navigator;->do:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    check-cast p3, Lorg/jaxen/NamespaceContext;

    invoke-interface {v1, p1, p3}, Lfreemarker/ext/xml/Navigator$XPathEx;->selectNodes(Ljava/lang/Object;Lorg/jaxen/NamespaceContext;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 8
    new-instance p3, Landroid/support/v4/k52;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not evaulate XPath expression "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p3
.end method

.method public abstract import(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public native(Ljava/lang/String;)Lfreemarker/ext/xml/NodeOperator;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/xml/Navigator;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/xml/NodeOperator;

    return-object p1
.end method

.method public abstract new(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator$XPathEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation
.end method

.method public abstract public(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public return(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/Navigator;->throw(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/Navigator;->while(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public abstract static(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract super(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract switch(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract this(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end method

.method public abstract throw(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public try(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public abstract while(Ljava/lang/Object;)Ljava/lang/String;
.end method
