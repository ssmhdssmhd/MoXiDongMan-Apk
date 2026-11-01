.class Lfreemarker/ext/jsp/final;
.super Lfreemarker/ext/jsp/break;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/final$if;,
        Lfreemarker/ext/jsp/final$do;
    }
.end annotation


# static fields
.field private static final goto:Lfreemarker/log/if;


# instance fields
.field private final case:Z

.field private final else:Z

.field private final try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.jsp"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/final;->goto:Lfreemarker/log/if;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jsp/break;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2
    const-class p1, Ljavax/servlet/jsp/tagext/IterationTag;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lfreemarker/ext/jsp/final;->case:Z

    if-eqz p1, :cond_0

    .line 3
    const-class p1, Ljavax/servlet/jsp/tagext/BodyTag;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lfreemarker/ext/jsp/final;->try:Z

    .line 4
    const-class p1, Ljavax/servlet/jsp/tagext/TryCatchFinally;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lfreemarker/ext/jsp/final;->else:Z

    return-void
.end method

.method public static synthetic case(Lfreemarker/ext/jsp/final;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/ext/jsp/final;->case:Z

    return p0
.end method

.method public static synthetic else()Lfreemarker/log/if;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/final;->goto:Lfreemarker/log/if;

    return-object v0
.end method

.method public static synthetic goto(Lfreemarker/ext/jsp/final;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/ext/jsp/final;->else:Z

    return p0
.end method

.method public static synthetic try(Lfreemarker/ext/jsp/final;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/ext/jsp/final;->try:Z

    return p0
.end method


# virtual methods
.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/ext/jsp/break;->do()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/jsp/tagext/Tag;

    .line 2
    invoke-static {}, Lfreemarker/ext/jsp/class;->do()Lfreemarker/ext/jsp/else;

    move-result-object v7

    .line 3
    const-class v1, Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v7, v1}, Lfreemarker/ext/jsp/else;->static(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/jsp/tagext/Tag;

    .line 4
    invoke-interface {v0, v1}, Ljavax/servlet/jsp/tagext/Tag;->setParent(Ljavax/servlet/jsp/tagext/Tag;)V

    .line 5
    invoke-interface {v0, v7}, Ljavax/servlet/jsp/tagext/Tag;->setPageContext(Ljavax/servlet/jsp/PageContext;)V

    .line 6
    invoke-virtual {v7}, Lfreemarker/ext/jsp/else;->goto()Lfreemarker/template/ObjectWrapper;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lfreemarker/ext/jsp/break;->for(Ljava/lang/Object;Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V

    .line 7
    instance-of p2, p1, Ljavax/servlet/jsp/JspWriter;

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {v7}, Lfreemarker/ext/jsp/else;->this()Ljavax/servlet/jsp/JspWriter;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p2, 0x0

    move-object v3, p1

    const/4 v6, 0x0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Landroid/support/v4/k52;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "out != pageContext.getOut(). Out is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " pageContext.getOut() is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v7}, Lfreemarker/ext/jsp/else;->this()Ljavax/servlet/jsp/JspWriter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_1
    new-instance p2, Lfreemarker/ext/jsp/catch;

    invoke-direct {p2, p1}, Lfreemarker/ext/jsp/catch;-><init>(Ljava/io/Writer;)V

    .line 12
    move-object p1, p2

    check-cast p1, Ljavax/servlet/jsp/JspWriter;

    invoke-virtual {v7, p1}, Lfreemarker/ext/jsp/else;->private(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;

    const/4 p1, 0x1

    move-object v3, p2

    const/4 v6, 0x1

    .line 13
    :goto_0
    new-instance p1, Lfreemarker/ext/jsp/final$if;

    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lfreemarker/ext/jsp/final$if;-><init>(Lfreemarker/ext/jsp/final;Ljava/io/Writer;Ljavax/servlet/jsp/tagext/Tag;Lfreemarker/ext/jsp/else;Z)V

    .line 14
    invoke-virtual {v7, v0}, Lfreemarker/ext/jsp/else;->package(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v7, p1}, Lfreemarker/ext/jsp/else;->private(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/break;->new(Ljava/lang/Exception;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1
.end method
