.class final Lfreemarker/ext/jsp/TaglibFactory$super;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "super"
.end annotation


# static fields
.field private static final const:Ljava/lang/String; = "tag"

.field private static final final:Ljava/lang/String; = "name"

.field private static final import:Ljava/lang/String; = "function-class"

.field private static final native:Ljava/lang/String; = "function-signature"

.field private static final public:Ljava/lang/String; = "listener"

.field private static final return:Ljava/lang/String; = "listener-class"

.field private static final super:Ljava/lang/String; = "tag-class"

.field private static final throw:Ljava/lang/String; = "tagclass"

.field private static final while:Ljava/lang/String; = "function"


# instance fields
.field private break:Ljava/lang/String;

.field private case:Ljava/util/Stack;

.field private catch:Ljava/lang/String;

.field private class:Ljava/lang/String;

.field private final do:Lfreemarker/ext/beans/try;

.field private else:Ljava/lang/String;

.field private final for:Ljava/util/List;

.field private goto:Ljava/lang/String;

.field private final if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfreemarker/template/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field private new:Lorg/xml/sax/Locator;

.field private this:Ljava/lang/String;

.field private try:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lfreemarker/template/ObjectWrapper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->if:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->for:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->case:Ljava/util/Stack;

    .line 5
    instance-of v0, p1, Lfreemarker/ext/beans/try;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lfreemarker/ext/beans/try;

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->do:Lfreemarker/ext/beans/try;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->do:Lfreemarker/ext/beans/try;

    .line 8
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->do()Lfreemarker/log/if;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/log/if;->public()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->do()Lfreemarker/log/if;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom EL functions won\'t be loaded because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "no ObjectWrapper was specified for the TaglibFactory (via TaglibFactory.setObjectWrapper(...), exists since 2.3.22)"

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the ObjectWrapper wasn\'t instance of "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lfreemarker/ext/beans/try;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/jsp/TaglibFactory$while;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lfreemarker/template/utility/if;->try(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lfreemarker/ext/jsp/TaglibFactory$super;->new(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfreemarker/ext/jsp/TaglibFactory$while;

    move-result-object p1

    throw p1

    :catch_1
    move-exception v0

    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lfreemarker/ext/jsp/TaglibFactory$super;->new(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfreemarker/ext/jsp/TaglibFactory$while;

    move-result-object p1

    throw p1
.end method

.method private do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/jsp/TaglibFactory$while;
        }
    .end annotation

    if-eqz p3, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p3, Lfreemarker/ext/jsp/TaglibFactory$while;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing required \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" element inside the \""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" element."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->new:Lorg/xml/sax/Locator;

    invoke-direct {p3, p1, p2}, Lfreemarker/ext/jsp/TaglibFactory$while;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p3
.end method

.method private new(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfreemarker/ext/jsp/TaglibFactory$while;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/jsp/TaglibFactory$while;
        }
    .end annotation

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    :cond_0
    const/4 v0, 0x1

    if-eq v1, v2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v0

    if-le v2, v1, :cond_1

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    new-instance v1, Lfreemarker/ext/jsp/TaglibFactory$while;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v3, p1, Ljava/lang/ClassNotFoundException;

    if-eqz v3, :cond_2

    const-string v3, "Not found class "

    goto :goto_1

    :cond_2
    const-string v3, "Can\'t load class "

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p2}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    if-eqz p4, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p4}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_3
    move-object p3, p2

    :goto_2
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string p2, " Hint: Before nested classes, use \"$\", not \".\"."

    :cond_4
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->new:Lorg/xml/sax/Locator;

    invoke-direct {v1, p2, p3, p1}, Lfreemarker/ext/jsp/TaglibFactory$while;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private try()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->try:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->try:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->try:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/jsp/TaglibFactory$while;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->case:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->case:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    const/4 p2, 0x3

    const-string v0, "function-signature"

    const-string v1, "function-class"

    const-string v2, "listener-class"

    const-string v3, "tag-class"

    const-string v4, "function"

    const-string v5, "tag"

    const-string v6, "name"

    if-ne p1, p2, :cond_6

    .line 3
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->case:Ljava/util/Stack;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$super;->try()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->else:Ljava/lang/String;

    goto/16 :goto_4

    .line 6
    :cond_0
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->case:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 7
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$super;->try()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->this:Ljava/lang/String;

    goto/16 :goto_4

    :cond_1
    const-string p1, "tagclass"

    .line 8
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$super;->try()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->class:Ljava/lang/String;

    goto/16 :goto_4

    .line 11
    :cond_3
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$super;->try()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->break:Ljava/lang/String;

    goto/16 :goto_4

    .line 13
    :cond_4
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 14
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$super;->try()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->catch:Ljava/lang/String;

    goto/16 :goto_4

    .line 15
    :cond_5
    :goto_0
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$super;->try()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->goto:Ljava/lang/String;

    goto/16 :goto_4

    .line 16
    :cond_6
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->case:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_f

    .line 17
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "; keeping only the last one."

    const/4 v5, 0x0

    if-eqz p1, :cond_a

    .line 18
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->else:Ljava/lang/String;

    invoke-direct {p0, p3, v6, p1}, Lfreemarker/ext/jsp/TaglibFactory$super;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->goto:Ljava/lang/String;

    invoke-direct {p0, p3, v3, p1}, Lfreemarker/ext/jsp/TaglibFactory$super;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->goto:Ljava/lang/String;

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->else:Ljava/lang/String;

    const-string v0, "custom tag"

    invoke-direct {p0, p1, v0, p3}, Lfreemarker/ext/jsp/TaglibFactory$super;->case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 21
    :try_start_0
    const-class p3, Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 22
    new-instance p3, Lfreemarker/ext/jsp/final;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->else:Ljava/lang/String;

    invoke-direct {p3, v0, p1}, Lfreemarker/ext/jsp/final;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1

    .line 23
    :cond_7
    new-instance p3, Lfreemarker/ext/jsp/const;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->else:Ljava/lang/String;

    invoke-direct {p3, v0, p1}, Lfreemarker/ext/jsp/const;-><init>(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_1
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->if:Ljava/util/Map;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->else:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    if-eqz p1, :cond_9

    .line 25
    invoke-static {p1}, Lfreemarker/ext/jsp/do;->if(Lfreemarker/template/TemplateModel;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->if:Ljava/util/Map;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->else:Ljava/lang/String;

    check-cast p1, Lfreemarker/template/TemplateMethodModelEx;

    invoke-static {p3, p1}, Lfreemarker/ext/jsp/do;->for(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateMethodModelEx;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 27
    :cond_8
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->do()Lfreemarker/log/if;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TLD contains multiple tags with name "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->else:Ljava/lang/String;

    invoke-static {v0}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    .line 28
    :cond_9
    :goto_2
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->else:Ljava/lang/String;

    .line 29
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->goto:Ljava/lang/String;

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 30
    new-instance p2, Lfreemarker/ext/jsp/TaglibFactory$while;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JavaBean introspection failed on custom tag class "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->goto:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->new:Lorg/xml/sax/Locator;

    invoke-direct {p2, p3, v0, p1}, Lfreemarker/ext/jsp/TaglibFactory$while;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Throwable;)V

    throw p2

    .line 31
    :cond_a
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->do:Lfreemarker/ext/beans/try;

    if-eqz p1, :cond_e

    .line 32
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->break:Ljava/lang/String;

    invoke-direct {p0, p3, v1, p1}, Lfreemarker/ext/jsp/TaglibFactory$super;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->catch:Ljava/lang/String;

    invoke-direct {p0, p3, v0, p1}, Lfreemarker/ext/jsp/TaglibFactory$super;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->this:Ljava/lang/String;

    invoke-direct {p0, p3, v6, p1}, Lfreemarker/ext/jsp/TaglibFactory$super;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->break:Ljava/lang/String;

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->this:Ljava/lang/String;

    const-string v0, "custom EL function"

    invoke-direct {p0, p1, v0, p3}, Lfreemarker/ext/jsp/TaglibFactory$super;->case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 36
    :try_start_1
    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->catch:Ljava/lang/String;

    invoke-static {p1, p3}, Lfreemarker/ext/jsp/super;->do(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 37
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p3

    .line 38
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 39
    :try_start_2
    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->do:Lfreemarker/ext/beans/try;

    invoke-virtual {p3, v5, p1}, Lfreemarker/ext/beans/try;->y(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lfreemarker/template/TemplateMethodModelEx;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 40
    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->if:Ljava/util/Map;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->this:Ljava/lang/String;

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lfreemarker/template/TemplateModel;

    if-eqz p3, :cond_c

    .line 41
    invoke-static {p3}, Lfreemarker/ext/jsp/do;->do(Lfreemarker/template/TemplateModel;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->if:Ljava/util/Map;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->this:Ljava/lang/String;

    invoke-static {p3, p1}, Lfreemarker/ext/jsp/do;->for(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateMethodModelEx;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 43
    :cond_b
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->do()Lfreemarker/log/if;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TLD contains multiple functions with name "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->this:Ljava/lang/String;

    invoke-static {v0}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    .line 44
    :cond_c
    :goto_3
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->this:Ljava/lang/String;

    .line 45
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->break:Ljava/lang/String;

    .line 46
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->catch:Ljava/lang/String;

    goto/16 :goto_4

    .line 47
    :catch_1
    new-instance p2, Lfreemarker/ext/jsp/TaglibFactory$while;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FreeMarker object wrapping failed on method : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->new:Lorg/xml/sax/Locator;

    invoke-direct {p2, p1, p3}, Lfreemarker/ext/jsp/TaglibFactory$while;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p2

    .line 48
    :cond_d
    new-instance p2, Lfreemarker/ext/jsp/TaglibFactory$while;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The custom EL function method must be public and static: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->new:Lorg/xml/sax/Locator;

    invoke-direct {p2, p1, p3}, Lfreemarker/ext/jsp/TaglibFactory$while;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p2

    :catch_2
    move-exception p2

    .line 49
    new-instance p3, Lfreemarker/ext/jsp/TaglibFactory$while;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while trying to resolve signature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->catch:Ljava/lang/String;

    .line 50
    invoke-static {v1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for custom EL function "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->this:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->new:Lorg/xml/sax/Locator;

    invoke-direct {p3, p1, v0, p2}, Lfreemarker/ext/jsp/TaglibFactory$while;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Throwable;)V

    throw p3

    :cond_e
    const-string p1, "listener"

    .line 53
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 54
    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->class:Ljava/lang/String;

    invoke-direct {p0, p3, v2, p2}, Lfreemarker/ext/jsp/TaglibFactory$super;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->class:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v5}, Lfreemarker/ext/jsp/TaglibFactory$super;->case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 56
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 57
    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->for:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->class:Ljava/lang/String;

    goto :goto_4

    :catch_3
    move-exception p1

    .line 59
    new-instance p2, Lfreemarker/ext/jsp/TaglibFactory$while;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create new instantiate from listener class "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->class:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->new:Lorg/xml/sax/Locator;

    invoke-direct {p2, p3, v0, p1}, Lfreemarker/ext/jsp/TaglibFactory$while;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Throwable;)V

    throw p2

    .line 60
    :cond_f
    :goto_4
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->case:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void

    .line 61
    :cond_10
    new-instance p1, Lfreemarker/ext/jsp/TaglibFactory$while;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unbalanced tag nesting at \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" end-tag."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->new:Lorg/xml/sax/Locator;

    invoke-direct {p1, p2, p3}, Lfreemarker/ext/jsp/TaglibFactory$while;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1
.end method

.method public for()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfreemarker/template/TemplateModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->if:Ljava/util/Map;

    return-object v0
.end method

.method public if()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->for:Ljava/util/List;

    return-object v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->new:Lorg/xml/sax/Locator;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->case:Ljava/util/Stack;

    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->case:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const-string p1, "name"

    .line 3
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "tagclass"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "tag-class"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "listener-class"

    .line 4
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "function-class"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "function-signature"

    .line 5
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$super;->try:Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method
