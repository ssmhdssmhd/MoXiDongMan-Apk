.class public abstract Lorg/chromium/net/native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/native$if;,
        Lorg/chromium/net/native$do;
    }
.end annotation


# static fields
.field public static final do:I = 0x0

.field public static final for:I = 0x2

.field public static final if:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract case()Ljava/lang/String;
.end method

.method public abstract do()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract for()I
.end method

.method public abstract if()Landroid/support/v4/rs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract new()Lorg/chromium/net/native$if;
.end method

.method public abstract try()Lorg/chromium/net/static;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
