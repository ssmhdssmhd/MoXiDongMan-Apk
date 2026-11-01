.class public abstract Landroid/support/v4/qs;
.super Lorg/chromium/net/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/qs$do;,
        Landroid/support/v4/qs$for;,
        Landroid/support/v4/qs$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/case;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract default(Ljava/lang/String;Lorg/chromium/net/if$if;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;IZLjava/util/Collection;ZIZI)Lorg/chromium/net/try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/net/if$if;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;IZ",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZIZI)",
            "Lorg/chromium/net/try;"
        }
    .end annotation
.end method

.method public abstract extends(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZZIZILorg/chromium/net/native$do;I)Landroid/support/v4/cd2;
    .param p13    # Lorg/chromium/net/native$do;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/net/return$if;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZZZZIZI",
            "Lorg/chromium/net/native$do;",
            "I)",
            "Landroid/support/v4/cd2;"
        }
    .end annotation
.end method

.method public native(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;)Lorg/chromium/net/else$do;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/dd2;

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/support/v4/dd2;-><init>(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;Landroid/support/v4/qs;)V

    return-object v0
.end method

.method public bridge synthetic try(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;)Lorg/chromium/net/return$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/qs;->native(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;)Lorg/chromium/net/else$do;

    move-result-object p1

    return-object p1
.end method
