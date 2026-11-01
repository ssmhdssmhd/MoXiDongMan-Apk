.class abstract Lcom/google/android/material/shape/if$this;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "this"
.end annotation


# static fields
.field public static final do:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/if$this;->do:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do(Landroid/graphics/Matrix;Landroid/support/v4/mx1;ILandroid/graphics/Canvas;)V
.end method

.method public final if(Landroid/support/v4/mx1;ILandroid/graphics/Canvas;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/shape/if$this;->do:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/material/shape/if$this;->do(Landroid/graphics/Matrix;Landroid/support/v4/mx1;ILandroid/graphics/Canvas;)V

    return-void
.end method
