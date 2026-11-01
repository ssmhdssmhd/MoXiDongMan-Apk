.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$if;
.super Lorg/chromium/net/for$do$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:Lorg/chromium/net/for$do$if;


# direct methods
.method public constructor <init>(Lorg/chromium/net/for$do$if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/for$do$if;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$if;->do:Lorg/chromium/net/for$do$if;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$if;->do:Lorg/chromium/net/for$do$if;

    invoke-virtual {v0, p1}, Lorg/chromium/net/for$do$if;->do(Ljava/lang/String;)V

    return-void
.end method
