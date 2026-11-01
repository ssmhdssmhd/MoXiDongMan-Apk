.class abstract Lfreemarker/ext/beans/this;
.super Lfreemarker/ext/beans/default;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/beans/default;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract case()Z
.end method

.method public abstract do()Ljava/lang/String;
.end method

.method public abstract else()Z
.end method

.method public abstract for()[Ljava/lang/Class;
.end method

.method public abstract goto()Z
.end method

.method public abstract if()Ljava/lang/String;
.end method

.method public abstract new(Lfreemarker/ext/beans/try;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Landroid/support/v4/k52;
        }
    .end annotation
.end method

.method public abstract try(Lfreemarker/ext/beans/try;Ljava/lang/Object;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
