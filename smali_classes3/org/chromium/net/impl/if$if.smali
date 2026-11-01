.class public Lorg/chromium/net/impl/if$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public final do:Ljava/lang/String;

.field public final for:Z

.field public final if:[[B

.field public final new:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;[[BZLjava/util/Date;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/impl/if$if;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/chromium/net/impl/if$if;->if:[[B

    .line 4
    iput-boolean p3, p0, Lorg/chromium/net/impl/if$if;->for:Z

    .line 5
    iput-object p4, p0, Lorg/chromium/net/impl/if$if;->new:Ljava/util/Date;

    return-void
.end method
