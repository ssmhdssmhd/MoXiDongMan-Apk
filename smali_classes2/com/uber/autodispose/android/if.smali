.class public final Lcom/uber/autodispose/android/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/ScopeProvider;


# instance fields
.field private final do:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/uber/autodispose/android/if;->do:Landroid/view/View;

    return-void
.end method

.method public static do(Landroid/view/View;)Lcom/uber/autodispose/ScopeProvider;
    .locals 1

    const-string v0, "view == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/uber/autodispose/android/if;

    invoke-direct {v0, p0}, Lcom/uber/autodispose/android/if;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public requestScope()Lio/reactivex/CompletableSource;
    .locals 2

    .line 1
    new-instance v0, Lcom/uber/autodispose/android/do;

    iget-object v1, p0, Lcom/uber/autodispose/android/if;->do:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/uber/autodispose/android/do;-><init>(Landroid/view/View;)V

    return-object v0
.end method
