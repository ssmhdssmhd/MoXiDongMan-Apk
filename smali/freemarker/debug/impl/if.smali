.class public abstract Lfreemarker/debug/impl/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/debug/impl/if$if;
    }
.end annotation


# static fields
.field private static final do:Lfreemarker/debug/impl/if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lfreemarker/debug/impl/if;->do()Lfreemarker/debug/impl/if;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/if;->do:Lfreemarker/debug/impl/if;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case()V
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/debug/impl/if;->do:Lfreemarker/debug/impl/if;

    invoke-virtual {v0}, Lfreemarker/debug/impl/if;->else()V

    return-void
.end method

.method private static do()Lfreemarker/debug/impl/if;
    .locals 2

    const-string v0, "freemarker.debug.password"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lfreemarker/template/utility/const;->for(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/debug/impl/if$if;

    invoke-direct {v0, v1}, Lfreemarker/debug/impl/if$if;-><init>(Lfreemarker/debug/impl/if$do;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/debug/impl/catch;

    invoke-direct {v0}, Lfreemarker/debug/impl/catch;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static goto(Lfreemarker/core/d0;Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/debug/impl/if;->do:Lfreemarker/debug/impl/if;

    invoke-virtual {v0, p0, p1, p2}, Lfreemarker/debug/impl/if;->this(Lfreemarker/core/d0;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static if(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/debug/impl/if;->do:Lfreemarker/debug/impl/if;

    invoke-virtual {v0, p0}, Lfreemarker/debug/impl/if;->for(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static new(Lfreemarker/template/static;)V
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/debug/impl/if;->do:Lfreemarker/debug/impl/if;

    invoke-virtual {v0, p0}, Lfreemarker/debug/impl/if;->try(Lfreemarker/template/static;)V

    return-void
.end method


# virtual methods
.method public abstract else()V
.end method

.method public abstract for(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract this(Lfreemarker/core/d0;Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation
.end method

.method public abstract try(Lfreemarker/template/static;)V
.end method
