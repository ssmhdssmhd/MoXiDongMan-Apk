.class public Lfreemarker/template/this;
.super Lfreemarker/ext/beans/try;
.source "SourceFile"


# static fields
.field public static final continue:Lfreemarker/template/this;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final strictfp:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final volatile:Lfreemarker/template/ObjectWrapper;


# instance fields
.field private final abstract:Z

.field private finally:Z

.field private package:Z

.field private private:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/template/this;

    invoke-direct {v0}, Lfreemarker/template/this;-><init>()V

    sput-object v0, Lfreemarker/template/this;->continue:Lfreemarker/template/this;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.python.core.PyObject"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "freemarker.ext.jython.goto"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "INSTANCE"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/template/ObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    instance-of v2, v1, Ljava/lang/ClassNotFoundException;

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "freemarker.template.DefaultObjectWrapper"

    .line 6
    invoke-static {v2}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v2

    const-string v3, "Failed to init Jython support, so it was disabled."

    .line 7
    invoke-virtual {v2, v3, v1}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_0
    move-object v2, v0

    .line 8
    :goto_0
    sput-object v0, Lfreemarker/template/this;->strictfp:Ljava/lang/Class;

    .line 9
    sput-object v2, Lfreemarker/template/this;->volatile:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/template/do;->t3:Landroid/support/v4/we2;

    invoke-direct {p0, v0}, Lfreemarker/template/this;-><init>(Landroid/support/v4/we2;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/ry;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lfreemarker/template/this;-><init>(Lfreemarker/ext/beans/else;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/we2;)V
    .locals 1

    .line 2
    new-instance v0, Lfreemarker/template/this$do;

    invoke-direct {v0, p1}, Lfreemarker/template/this$do;-><init>(Landroid/support/v4/we2;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lfreemarker/template/this;-><init>(Landroid/support/v4/ry;Z)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/ext/beans/else;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/ext/beans/try;-><init>(Lfreemarker/ext/beans/else;ZZ)V

    .line 4
    instance-of v1, p1, Landroid/support/v4/ry;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/support/v4/ry;

    goto :goto_0

    :cond_0
    new-instance v1, Lfreemarker/template/this$if;

    .line 5
    invoke-virtual {p1}, Lfreemarker/ext/beans/else;->case()Landroid/support/v4/we2;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lfreemarker/template/this$if;-><init>(Lfreemarker/template/this;Landroid/support/v4/we2;)V

    move-object p1, v1

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/ry;->package()Z

    move-result v1

    iput-boolean v1, p0, Lfreemarker/template/this;->finally:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->import()Landroid/support/v4/we2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/we2;->intValue()I

    move-result v1

    sget v2, Landroid/support/v4/ul2;->this:I

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lfreemarker/template/this;->abstract:Z

    .line 8
    invoke-virtual {p1}, Landroid/support/v4/ry;->extends()Z

    move-result v0

    iput-boolean v0, p0, Lfreemarker/template/this;->package:Z

    .line 9
    invoke-virtual {p1}, Landroid/support/v4/ry;->finally()Z

    move-result p1

    iput-boolean p1, p0, Lfreemarker/template/this;->private:Z

    .line 10
    invoke-virtual {p0, p2}, Lfreemarker/ext/beans/try;->break(Z)V

    return-void
.end method

.method public static c(Landroid/support/v4/we2;)Landroid/support/v4/we2;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/ul2;->if(Landroid/support/v4/we2;)V

    .line 2
    invoke-static {p0}, Lfreemarker/ext/beans/try;->c(Landroid/support/v4/we2;)Landroid/support/v4/we2;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/we2;->intValue()I

    move-result p0

    sget v1, Landroid/support/v4/ul2;->try:I

    if-lt p0, v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/we2;->intValue()I

    move-result p0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lfreemarker/template/do;->l3:Landroid/support/v4/we2;

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/this;->package:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/this;->private:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/this;->finally:Z

    return v0
.end method

.method public D(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lfreemarker/template/this;->H(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lfreemarker/template/this;->volatile:Lfreemarker/template/ObjectWrapper;

    if-eqz v0, :cond_1

    sget-object v1, Lfreemarker/template/this;->strictfp:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public E(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/template/this;->package:Z

    return-void
.end method

.method public F(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/template/this;->private:Z

    return-void
.end method

.method public G(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/template/this;->finally:Z

    return-void
.end method

.method public H(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 0

    .line 1
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-static {p1}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object p1

    return-object p1
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Lfreemarker/ext/beans/try;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "simpleMapWrapper"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useAdaptersForContainers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lfreemarker/template/this;->finally:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", forceLegacyNonListCollections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lfreemarker/template/this;->package:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", iterableSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lfreemarker/template/this;->private:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p1, Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Landroid/support/v4/ez1;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Landroid/support/v4/az1;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, p1}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 8
    :cond_3
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_7

    .line 9
    instance-of v0, p1, Ljava/sql/Date;

    if-eqz v0, :cond_4

    .line 10
    new-instance v0, Landroid/support/v4/wy1;

    check-cast p1, Ljava/sql/Date;

    invoke-direct {v0, p1}, Landroid/support/v4/wy1;-><init>(Ljava/sql/Date;)V

    return-object v0

    .line 11
    :cond_4
    instance-of v0, p1, Ljava/sql/Time;

    if-eqz v0, :cond_5

    .line 12
    new-instance v0, Landroid/support/v4/wy1;

    check-cast p1, Ljava/sql/Time;

    invoke-direct {v0, p1}, Landroid/support/v4/wy1;-><init>(Ljava/sql/Time;)V

    return-object v0

    .line 13
    :cond_5
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_6

    .line 14
    new-instance v0, Landroid/support/v4/wy1;

    check-cast p1, Ljava/sql/Timestamp;

    invoke-direct {v0, p1}, Landroid/support/v4/wy1;-><init>(Ljava/sql/Timestamp;)V

    return-object v0

    .line 15
    :cond_6
    new-instance v0, Landroid/support/v4/wy1;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->final()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/support/v4/wy1;-><init>(Ljava/util/Date;I)V

    return-object v0

    .line 16
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 18
    iget-boolean v0, p0, Lfreemarker/template/this;->finally:Z

    if-eqz v0, :cond_8

    .line 19
    invoke-static {p1, p0}, Lfreemarker/template/if;->adapt(Ljava/lang/Object;Lfreemarker/template/ObjectWrapperAndUnwrapper;)Lfreemarker/template/if;

    move-result-object p1

    return-object p1

    .line 20
    :cond_8
    invoke-virtual {p0, p1}, Lfreemarker/template/this;->z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    :cond_9
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_d

    .line 22
    iget-boolean v0, p0, Lfreemarker/template/this;->finally:Z

    if-eqz v0, :cond_c

    .line 23
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_a

    .line 24
    check-cast p1, Ljava/util/List;

    invoke-static {p1, p0}, Lfreemarker/template/case;->adapt(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)Lfreemarker/template/case;

    move-result-object p1

    return-object p1

    .line 25
    :cond_a
    iget-boolean v0, p0, Lfreemarker/template/this;->package:Z

    if-eqz v0, :cond_b

    new-instance v0, Lfreemarker/template/return;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    goto :goto_0

    :cond_b
    check-cast p1, Ljava/util/Collection;

    .line 26
    invoke-static {p1, p0}, Lfreemarker/template/goto;->adapt(Ljava/util/Collection;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)Lfreemarker/template/goto;

    move-result-object v0

    :goto_0
    return-object v0

    .line 27
    :cond_c
    new-instance v0, Lfreemarker/template/return;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    return-object v0

    .line 28
    :cond_d
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 29
    iget-boolean v0, p0, Lfreemarker/template/this;->finally:Z

    if-eqz v0, :cond_e

    check-cast p1, Ljava/util/Map;

    .line 30
    invoke-static {p1, p0}, Lfreemarker/template/else;->adapt(Ljava/util/Map;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)Lfreemarker/template/else;

    move-result-object p1

    goto :goto_1

    :cond_e
    new-instance v0, Lfreemarker/template/native;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/native;-><init>(Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V

    move-object p1, v0

    :goto_1
    return-object p1

    .line 31
    :cond_f
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    .line 32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_2

    :cond_10
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_2
    return-object p1

    .line 33
    :cond_11
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_13

    .line 34
    iget-boolean v0, p0, Lfreemarker/template/this;->finally:Z

    if-eqz v0, :cond_12

    check-cast p1, Ljava/util/Iterator;

    .line 35
    invoke-static {p1, p0}, Lfreemarker/template/try;->adapt(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/try;

    move-result-object p1

    goto :goto_3

    :cond_12
    new-instance v0, Lfreemarker/template/import;

    check-cast p1, Ljava/util/Iterator;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/import;-><init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V

    move-object p1, v0

    :goto_3
    return-object p1

    .line 36
    :cond_13
    iget-boolean v0, p0, Lfreemarker/template/this;->abstract:Z

    if-eqz v0, :cond_14

    instance-of v0, p1, Ljava/util/Enumeration;

    if-eqz v0, :cond_14

    .line 37
    check-cast p1, Ljava/util/Enumeration;

    invoke-static {p1, p0}, Lfreemarker/template/for;->adapt(Ljava/util/Enumeration;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/for;

    move-result-object p1

    return-object p1

    .line 38
    :cond_14
    iget-boolean v0, p0, Lfreemarker/template/this;->private:Z

    if-eqz v0, :cond_15

    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_15

    .line 39
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lfreemarker/template/new;->adapt(Ljava/lang/Iterable;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)Lfreemarker/template/new;

    move-result-object p1

    return-object p1

    .line 40
    :cond_15
    invoke-virtual {p0, p1}, Lfreemarker/template/this;->D(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
