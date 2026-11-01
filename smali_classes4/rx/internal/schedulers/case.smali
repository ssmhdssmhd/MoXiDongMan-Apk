.class public final Lrx/internal/schedulers/case;
.super Lrx/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/case$do;
    }
.end annotation


# static fields
.field public static final do:Lrx/internal/schedulers/case;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/schedulers/case;

    invoke-direct {v0}, Lrx/internal/schedulers/case;-><init>()V

    sput-object v0, Lrx/internal/schedulers/case;->do:Lrx/internal/schedulers/case;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrx/if;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lrx/if$do;
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/schedulers/case$do;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/case$do;-><init>(Lrx/internal/schedulers/case;)V

    return-object v0
.end method
