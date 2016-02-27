/*#####
# npc_dragonmaw_transporter
#####*/

enum
{
	AREA_DRAGONMAW_FORTRESS = 3939,
};

struct npc_dragonmaw_transporterAI : public npc_escortAI
{
	npc_dragonmaw_transporterAI(Creature* pCreature) : npc_escortAI(pCreature)
	{
		Reset();
		pCreature->SetActiveObjectState(true);
		m_started = true;
	}

	bool m_started;

	void Reset() override
	{
		
	}

	void WaypointReached(uint32 uiPointId) override 
	{
		switch (uiPointId)
		{
		case 11: m_creature->ForcedDespawn(); break;
		case 20: m_creature->ForcedDespawn(); break;
		}
	}
	
	void UpdateEscortAI(const uint32 uiDiff) override
	{
		if (m_started)
		{
			if (m_creature->GetAreaId() == AREA_DRAGONMAW_FORTRESS)
			{
				Start(true);
				SetEscortPaused(true);
				SetCurrentWaypoint(12);
				SetEscortPaused(false);
				m_started = false;
			}
			else
			{
				Start(true);
				SetEscortPaused(true);
				SetCurrentWaypoint(1);
				SetEscortPaused(false);
				m_started = false;
			}
		}

		if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
			return;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_npc_dragonmaw_transporter(Creature* pCreature)
{
	return new npc_dragonmaw_transporterAI(pCreature);
};

/*#####
# trigger_dragonmaw_transporter
#####*/

enum
{
	NPC_DRAGONMAW_TRANSPORTER		= 23188,
};

struct trigger_dragonmaw_transporterAI : public ScriptedAI
{
	trigger_dragonmaw_transporterAI(Creature* pCreature) : ScriptedAI(pCreature) 
	{
		pCreature->SetActiveObjectState(true);
		Reset(); 
	}

	uint32 m_uiSpawnTimer = 20000;
	uint32 m_uiDespawnTimer = 10000;
	
	void Reset() override{}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (m_uiSpawnTimer < uiDiff)
		{
			DoSpawnCreature(NPC_DRAGONMAW_TRANSPORTER, 0, 0, 0, 0, 1, m_uiDespawnTimer);
			
			m_uiSpawnTimer = 20000;
		}
		else
			m_uiSpawnTimer -= uiDiff;
	}

	void SummonedCreatureJustDied(Creature* pSummoned) override
	{
		m_uiSpawnTimer = 20000;
	}
};

CreatureAI* GetAI_trigger_dragonmaw_transporter(Creature* pCreature)
{
    return new trigger_dragonmaw_transporterAI(pCreature);
};

//Erstellungen der Objekte am Ende hinzufügen
pNewScript = new Script;
pNewScript->Name = "trigger_dragonmaw_transporter";
pNewScript->GetAI = &GetAI_trigger_dragonmaw_transporter;
pNewScript->RegisterSelf();

pNewScript = new Script;
pNewScript->Name = "npc_dragonmaw_transporter";
pNewScript->GetAI = &GetAI_npc_dragonmaw_transporter;
pNewScript->RegisterSelf();