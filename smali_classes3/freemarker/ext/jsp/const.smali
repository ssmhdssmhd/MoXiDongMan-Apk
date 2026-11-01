.class Lfreemarker/ext/jsp/const;
.super Lfreemarker/ext/jsp/break;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateDirectiveModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/const$if;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jsp/break;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2
    const-class p1, Ljavax/servlet/jsp/tagext/SimpleTag;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not implement either the "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Ljavax/servlet/jsp/tagext/Tag;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " interface or the "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Ljavax/servlet/jsp/tagext/SimpleTag;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " interface."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute(Lfreemarker/core/d0;Ljava/util/Map;[Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateDirectiveBody;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/ext/jsp/break;->do()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/servlet/jsp/tagext/SimpleTag;

    .line 2
    invoke-static {}, Lfreemarker/ext/jsp/class;->do()Lfreemarker/ext/jsp/else;

    move-result-object v0

    .line 3
    new-instance v1, Lfreemarker/ext/jsp/catch;

    invoke-virtual {p1}, Lfreemarker/core/d0;->c2()Ljava/io/Writer;

    move-result-object p1

    invoke-direct {v1, p1}, Lfreemarker/ext/jsp/catch;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v1}, Lfreemarker/ext/jsp/else;->private(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-interface {p3, v0}, Ljavax/servlet/jsp/tagext/SimpleTag;->setJspContext(Ljavax/servlet/jsp/JspContext;)V

    .line 5
    const-class p1, Ljavax/servlet/jsp/tagext/JspTag;

    invoke-virtual {v0, p1}, Lfreemarker/ext/jsp/else;->static(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/servlet/jsp/tagext/JspTag;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p3, p1}, Ljavax/servlet/jsp/tagext/SimpleTag;->setParent(Ljavax/servlet/jsp/tagext/JspTag;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Lfreemarker/ext/jsp/else;->goto()Lfreemarker/template/ObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lfreemarker/ext/jsp/break;->for(Ljava/lang/Object;Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V

    if-eqz p4, :cond_1

    .line 8
    new-instance p1, Lfreemarker/ext/jsp/const$do;

    invoke-direct {p1, p0, v0, p4}, Lfreemarker/ext/jsp/const$do;-><init>(Lfreemarker/ext/jsp/const;Lfreemarker/ext/jsp/else;Lfreemarker/template/TemplateDirectiveBody;)V

    invoke-interface {p3, p1}, Ljavax/servlet/jsp/tagext/SimpleTag;->setJspBody(Ljavax/servlet/jsp/tagext/JspFragment;)V

    .line 9
    invoke-virtual {v0, p3}, Lfreemarker/ext/jsp/else;->package(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    invoke-interface {p3}, Ljavax/servlet/jsp/tagext/SimpleTag;->doTag()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-virtual {v0}, Lfreemarker/ext/jsp/else;->throws()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lfreemarker/ext/jsp/else;->throws()V

    .line 12
    throw p1

    .line 13
    :cond_1
    invoke-interface {p3}, Ljavax/servlet/jsp/tagext/SimpleTag;->doTag()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Lfreemarker/ext/jsp/else;->default()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lfreemarker/ext/jsp/else;->default()V

    .line 15
    throw p1
    :try_end_4
    .catch Lfreemarker/template/TemplateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/break;->new(Ljava/lang/Exception;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 17
    throw p1
.end method
