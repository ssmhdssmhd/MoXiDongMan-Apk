.class public abstract Landroid/support/v4/fx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static do:Z = true

.field private static final if:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ex;->do:Landroid/support/v4/ex;

    sput-object v0, Landroid/support/v4/fx;->if:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()V
    .locals 0

    invoke-static {}, Landroid/support/v4/fx;->for()V

    return-void
.end method

.method private static synthetic for()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Landroid/support/v4/fx;->do:Z

    return-void
.end method


# virtual methods
.method public abstract if(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/fx;->do:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Landroid/support/v4/fx;->do:Z

    .line 3
    sget-object v0, Landroid/support/v4/fx;->if:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v4/fx;->if(Landroid/view/View;)V

    :cond_0
    return-void
.end method
