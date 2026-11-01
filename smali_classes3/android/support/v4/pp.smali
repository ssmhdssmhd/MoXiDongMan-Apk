.class public final Landroid/support/v4/pp;
.super Landroid/support/v4/np;
.source "SourceFile"


# static fields
.field public static final do:Landroid/support/v4/np;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/pp;

    invoke-direct {v0}, Landroid/support/v4/pp;-><init>()V

    sput-object v0, Landroid/support/v4/pp;->do:Landroid/support/v4/np;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/reactivex/internal/disposables/if;->complete(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
