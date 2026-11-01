.class public Lorg/chromium/net/impl/if$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field public final do:Ljava/lang/String;

.field public final for:I

.field public final if:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/impl/if$for;->do:Ljava/lang/String;

    .line 3
    iput p2, p0, Lorg/chromium/net/impl/if$for;->if:I

    .line 4
    iput p3, p0, Lorg/chromium/net/impl/if$for;->for:I

    return-void
.end method
