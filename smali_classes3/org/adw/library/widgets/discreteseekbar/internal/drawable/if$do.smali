.class Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;


# direct methods
.method public constructor <init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->try(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;Z)Z

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 3
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->case(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;Z)Z

    return-void
.end method
