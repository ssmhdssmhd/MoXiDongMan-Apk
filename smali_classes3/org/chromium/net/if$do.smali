.class public abstract Lorg/chromium/net/if$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation


# static fields
.field public static final do:I = 0x0

.field public static final for:I = 0x2

.field public static final if:I = 0x1

.field public static final new:I = 0x3

.field public static final try:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/if$do;
.end method

.method public abstract for(Z)Lorg/chromium/net/if$do;
.end method

.method public abstract if()Lorg/chromium/net/if;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation
.end method

.method public abstract new(Ljava/lang/String;)Lorg/chromium/net/if$do;
.end method

.method public abstract try(I)Lorg/chromium/net/if$do;
.end method
