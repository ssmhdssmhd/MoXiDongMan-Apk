.class public Lorg/chromium/net/impl/goto;
.super Landroid/support/v4/s21;
.source "SourceFile"


# instance fields
.field private native:Lorg/chromium/net/impl/VersionSafeCallbacks$if;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/s21;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic const(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/goto;->d(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public d(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/impl/if;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/impl/VersionSafeCallbacks$if;

    invoke-direct {v0, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$if;-><init>(Lorg/chromium/net/for$do$if;)V

    iput-object v0, p0, Lorg/chromium/net/impl/goto;->native:Lorg/chromium/net/impl/VersionSafeCallbacks$if;

    return-object p0
.end method

.method public protected()Lorg/chromium/net/impl/VersionSafeCallbacks$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/goto;->native:Lorg/chromium/net/impl/VersionSafeCallbacks$if;

    return-object v0
.end method
