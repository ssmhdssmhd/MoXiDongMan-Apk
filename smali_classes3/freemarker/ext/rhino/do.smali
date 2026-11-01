.class public Lfreemarker/ext/rhino/do;
.super Lfreemarker/ext/rhino/if;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# instance fields
.field private final new:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Function;Lorg/mozilla/javascript/Scriptable;Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lfreemarker/ext/rhino/if;-><init>(Lorg/mozilla/javascript/Scriptable;Lfreemarker/ext/beans/try;)V

    .line 2
    iput-object p2, p0, Lfreemarker/ext/rhino/do;->new:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lfreemarker/ext/rhino/if;->if()Lfreemarker/ext/beans/try;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 5
    aget-object v3, p1, v2

    check-cast v3, Lfreemarker/template/TemplateModel;

    invoke-virtual {v1, v3}, Lfreemarker/ext/beans/try;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lfreemarker/ext/rhino/if;->do()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Function;

    iget-object v3, p0, Lfreemarker/ext/rhino/do;->new:Lorg/mozilla/javascript/Scriptable;

    .line 7
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    iget-object v4, p0, Lfreemarker/ext/rhino/do;->new:Lorg/mozilla/javascript/Scriptable;

    .line 8
    invoke-interface {v2, v0, v3, v4, p1}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method
