.class Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;


# direct methods
.method public constructor <init>(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$for;->do:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosingComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$for;->do:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->access$200(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->else()V

    return-void
.end method

.method public onOpeningComplete()V
    .locals 0

    return-void
.end method
