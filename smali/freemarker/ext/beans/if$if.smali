.class final Lfreemarker/ext/beans/if$if;
.super Lfreemarker/ext/beans/this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:Lfreemarker/ext/beans/transient;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/transient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/beans/this;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/if$if;->do:Lfreemarker/ext/beans/transient;

    return-void
.end method

.method private this(Lfreemarker/ext/beans/try;[Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Character;

    iget-object v1, p0, Lfreemarker/ext/beans/if$if;->do:Lfreemarker/ext/beans/transient;

    invoke-virtual {v1}, Lfreemarker/ext/beans/transient;->for()[Ljava/lang/Class;

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 3
    aget-object v4, v1, v3

    .line 4
    aget-object v5, p2, v3

    if-nez v5, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_1

    .line 6
    move-object v6, v5

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v4, v7}, Lfreemarker/ext/beans/try;->a(Ljava/util/List;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, p2, v3

    .line 7
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_2

    const-class v6, Ljava/util/List;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {p1, v5}, Lfreemarker/ext/beans/try;->for(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    aput-object v6, p2, v3

    .line 9
    :cond_2
    instance-of v6, v5, Lfreemarker/ext/beans/break;

    if-eqz v6, :cond_5

    if-eq v4, v0, :cond_4

    .line 10
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v4, v6, :cond_4

    const-class v6, Ljava/lang/String;

    .line 11
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 12
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    check-cast v5, Lfreemarker/ext/beans/break;

    invoke-virtual {v5}, Lfreemarker/ext/beans/break;->if()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    check-cast v5, Lfreemarker/ext/beans/break;

    invoke-virtual {v5}, Lfreemarker/ext/beans/break;->do()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, p2, v3

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public case()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/if$if;->do:Lfreemarker/ext/beans/transient;

    invoke-virtual {v0}, Lfreemarker/ext/beans/transient;->case()Z

    move-result v0

    return v0
.end method

.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/if$if;->do:Lfreemarker/ext/beans/transient;

    invoke-virtual {v0}, Lfreemarker/ext/beans/transient;->do()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/if$if;->do:Lfreemarker/ext/beans/transient;

    invoke-virtual {v0}, Lfreemarker/ext/beans/transient;->else()Z

    move-result v0

    return v0
.end method

.method public for()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/if$if;->do:Lfreemarker/ext/beans/transient;

    invoke-virtual {v0}, Lfreemarker/ext/beans/transient;->for()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public goto()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/if$if;->do:Lfreemarker/ext/beans/transient;

    invoke-virtual {v0}, Lfreemarker/ext/beans/transient;->goto()Z

    move-result v0

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/if$if;->do:Lfreemarker/ext/beans/transient;

    invoke-virtual {v0}, Lfreemarker/ext/beans/transient;->if()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public new(Lfreemarker/ext/beans/try;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/if$if;->this(Lfreemarker/ext/beans/try;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/beans/if$if;->do:Lfreemarker/ext/beans/transient;

    invoke-virtual {v0, p1, p2}, Lfreemarker/ext/beans/transient;->new(Lfreemarker/ext/beans/try;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public try(Lfreemarker/ext/beans/try;Ljava/lang/Object;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lfreemarker/ext/beans/if$if;->this(Lfreemarker/ext/beans/try;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/beans/if$if;->do:Lfreemarker/ext/beans/transient;

    invoke-virtual {v0, p1, p2, p3}, Lfreemarker/ext/beans/transient;->try(Lfreemarker/ext/beans/try;Ljava/lang/Object;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method
